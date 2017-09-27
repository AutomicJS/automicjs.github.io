/**
 * Automic.js Framework
 * @file guide.js
 * @author AutomicJS
 * @copyright 2017
 * @license MIT
 * @github https://github.com/AutomicJS/guides
 * @version 0.0.1
 * @description A simple powerful library for making powerful user guides
 */

if ( typeof Redawn === 'undefined' ) {
    throw new Error('Failed to find Redawn library');
}
if ( typeof window.jQuery === 'undefined' ) {
    throw new Error('Failed to find jQuery library');
}

var Guide = function () {
    this.defaultActiveLoadFilter    = '[data-defaultload]';
    this.defaultLoader              = '[data-load]';
    this.loadGuide();
};

Guide.prototype.loadGuideContent = function (response) {
    var rxd = new Redawn();
    rxd.setDawn(response);
    $('#appPage').html(rxd.compile()); 
};

Guide.prototype.findGuideTagReference = function (tagger) {
    if ( typeof tagger === 'undefined' ) {
        throw new Error('Failed to find guide tag reference, as the tagger was not supplied.');
    }
    var qs = document.querySelector(tagger);
    var dataset = qs.dataset;
    var selector = '';
    if ( tagger.indexOf('defaultload') > -1 ) {
        selector = dataset.defaultload; 
    }
    else {
        selector = dataset.load;
    }
    if ( selector === '' ) {
        throw new Error('Failed to find the file requested.');
    }
    $.ajax({
        type: "GET",
        url: selector,
        success: function ( response ) {
            this.loadGuideContent(response);
        }.bind(this),
        error: function( x,y,z ) {
            console.log(x,y,z); 
        }
    });
};

Guide.prototype.loadClickableGuide = function (loader) {
    var selector = '';
    if( typeof loader === 'undefined' || loader === '' ) {
        throw new Error('Failed to find the file requested.');
    }
    selector = loader; 
    $.ajax({
        type: "GET",
        url: selector,
        success: function ( response ) {
            this.loadGuideContent(response);
        }.bind(this),
        error: function( x,y,z ) {
            this.loadGuideContent('# 404 Page Not Found\nThe requested page was not found.');
        }.bind(this)
    });
};

Guide.prototype.loadGuide = function (guideTagID) {
    if ( typeof guideTagID === 'undefined' ) {
        this.findGuideTagReference(this.defaultActiveLoadFilter); 
    }
};

var GuideList = new Guide();

$('[data-load]').on('click', function() {
    var loader = $(this).data('load');
    GuideList.loadClickableGuide(loader);
});