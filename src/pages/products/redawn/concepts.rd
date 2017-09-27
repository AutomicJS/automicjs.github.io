<br>
# Redawn Concepts 

Redawn has a simple, yet powerful set of features, which include however not limited to:

1. All syntax must be easy, user-friendly and dead simple to understand

2. All multi-option syntax must have a clear purpose and usage examples, if it can be simplified it must be.

@@br

## Supported Options

1. **Bold**

2. *Italics*

3. **Code**

4. *Links*

5. **Images**

6. *Newlines*

7. **Line Breaks**

8. *Page References*

9. **HTML Tags**

10. *Stylings*

@@br

## Examples

Bolding text:

```redawn 
@!!! Wrap the text you wish to bold with two stars before and after the context, for example: "**Test**"
``
@@br
Italitcs:

```redawn
@!!! Wrap the text you wish to make italic with one star before and after the context, for example: "*Test*"
``
@@br
Code:

```redawn
@!!! Wrap the code you wish to produce with three backticks to start, and two backticks to finish, like so: "```language<br>this is my test code<br>``"
``
@@br
Links:

```redawn
@!!! Wrap the link like so, the first in square brackets the text will be the label, and the second in the circle brackets will be the link, like so: "[label visible to user](https://link.com/)"
``
@@br
Newlines: 

```redawn
@!!! Newlines are automatic by just making a new line in the redawn file, however if you need multiple without wasting space you can use the following shorthand: "@@br" 
``
@@br
Line Breaks:

```redawn
@!!! Line Breaks are the same thing as new lines, as mentioned above it's the short hand "@@br"
``
@@br
Page References:

```redawn
@!!! Want to clickly link to something with an anchor tag without writtng big links? Just do "@#TAGHERE@" and it will generate a link that says "(click here)"  
``
HTML Tags:

```redawn
@!!! One issue that standard Markdown killed us with, was the lack of custom HTML elements & tags allowed, therefore using the syntax "!TAGNAME" you can create custom tags, ie: "!p" will create a paragraph element, and this will work for any elements. You can supply a class name to the custom elements by "!p.classNameHere" and it will attach that class to the element.
``
@@br
Styling:
@@br
@@br
There are multiple ways to style content, here are a few examples:
@@br
@@br
**The complex way: ** This is arguably one of the most challenging ways to style, however allows more flexibility to the end-user in the long run for shorter texts, using the syntax as follows:
```redawn
@!!! @#1c75bc|#fff Text Here
``
This syntax will style the text with a background color(1c75bc) and a text color (fff) with the content "Text Here"
@@br
We've extended this syntax to allow you to pass a third parameter, the third parameter is an element tag, ie:
```redawn
@!!! @#1c75bc|#fff|h3 Text Here
``
will produce an h3 tag, with the background and text color specified.
@@br
@@br
Another way to style is using standard element-like syntax, for example, the following code would assign a background color only:
```redawn
@!!! <#1c75bc>Content here</#1c75bc>
``
@@br
@@br
Then, to do a font color, the same syntax except append an "@" before the hash and code.
@@br
@@br
## That's all... for now!
[Check out the source here](https://github.com/automicjs/redawn)
@@br
@@br