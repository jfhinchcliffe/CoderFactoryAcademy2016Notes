# Week 4 Notes!

##Monday

### Presenting project apps

Tanim's app was probably the most rounded / full featured: https://github.com/tanimmahmud/Banking-App

## HTML and CSS

HTML - not a programming language. Specifies layout and style.

Each HTML tag has a key / attribute.
EG. img can have src key, and /images/cat.jpg attribute <img src='images/cat.jpg'>

Use the Chrome Developer Tools (inspect) to adjust colours within the browser.

### Ensure you put <meta charset="utf-8"> in the HTML head

use a hash for ID's,
use a . for classes

Emmett is SUPER handy for autocompleting HTML
html:5 prints the HTML boilerplate.

Can include 2 CSS files.
Last one loaded gets priority if you include 2 CSS files. EG use Botostrap and then make your own customisations in another file.

### Classes are multiple - a 'class' of content

<h1 class="special">Text</h1>
will be targeted by
.special {
  color: blue;
  font-size: 30px;
}

### ID's are single - a single ID

<div id="contact">Text Here</div>

#contact {
  background: #F00;
  font-family: serif;
}

## Advanced CSS

Animations, progressive enhancement

Animation - create animations for CSS without the use of javascript of flash

Animationsset up keyframes in CSS
name the animation name in CSS
```
@keyframes color-change {
  0% {
  color: red;}
  100% {
    color: red;
  }
}
```

```
#box {
  animation-name: color-change;
}
```

Would target an element with the ID of Box

animation properties
animation-name
animation-duration
animation-iteration count
animation-direction
animation-timing-function
animation-fill-mode
animation-delay

shorter animation: color-change 1s 2s 3s alternate backwards

### Breakpoints / screen size

Creating CSS rules for specific device classes

2MEDIA ONLY SCREEN AND (MIN-WIDTH: 768PX) {
  special rules for med screens
}

You can have overall styles and then have breakpoints to make sure mobile experience is nice. Specific styles for smaller screens.

Have as many as you'd like


### Mobile first Design

Prioritise how sites look on a mobile device. This is the majority of traffic these days.

Make CSS for small screen first, and use media queries to progressively adjust the design for larger and larger screens.

Get the most constrained design first and move on up to larger sizes.

### Future CSS

Continually evolving. When developing, bear in mind minimum browser requirements. eg, IE9.
Check www.caniuse.com to see if IE supports CSS animation

### Progressive enhancement

Designed in a way that if there is a feature that isn't available, it just won't display.


CSS Syntax
who{ what: how;}

at the top of a CSS file, you might have global styles:

```
* {
  global: styles;
  go: here;
}
```

in css, cursor: pointer; gives you a little hand when mousing over the element.
 line-height: 88
 this num can be set to center text within a div.

 ## Bootstrap

 Bootstrap gives you a bunch for awesome styles to get your projects up and running quickly.

Adjusts columns to small, medium or large  screen sizes.
