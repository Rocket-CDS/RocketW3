# RocketW3 Skin

W3 CSS breakpoints are 600, 992, 1205

To make a site full-width stretchy:
```
.segment > .w3-content {max-width:100%}

(or just .w3-content {max-width:100%} if the modules are clear of w3-content classes)
```


### Think of content spacing like this:
The skin applies left and right margins to the entire page via the w3-content class. Otherwise it applies no spacing.  
The default container applies horizontal spacing between content panes via the w3-container class.  
The Nocontainer container is a default container with the spacing zeroed out.  
The module applies vertical spacing via the w3-panel class and also block html elements.  

Note that two skin panes that have content via skin objects but do not allow modules to be inserted, have horizontal spacing applied via the w3-container class. These are the mainheader and copyright segments.  

The w3-container class adds a 16px left and right padding to any HTML element.  
The skin is using w3-container once for each supplied DNN container. The nocontainer container has padding set to zero.  
So don't normally use w3-container in a module unless you are creating munlti column content that needs spacing around all columns.  
If you are creating an extra column within your content, use the W3.CSS Margin Classes  


### Use these W3 classes within a module:  
```
w3-section - adds 16px top and bottom margin to an element. Use this as your basic wrapper.  
w3-panel - adds 16px top and bottom margin and 16px left and right padding to an element.  
w3-padding-16, w3-padding-24, w3-padding-32 add padding top and bottom  
```
Paragraphs and headings will normally add vertical spacing within the content.  

### Useful classes:
https://www.w3schools.com/w3css/w3css_display.asp


Within a module, to make mmultiple column content with space between each column, but still aligned left and right, use w3-row-padding w3-section w3-stretch as in this example:
```
 <div class="w3-row-padding w3-section w3-stretch">
  <div class="w3-col s4">
    <img src="img_nature_wide.jpg">
  </div>
  <div class="w3-col s4">
    <img src="img_snow_wide.jpg">
  </div>
  <div class="w3-col s4">
    <img src="img_mountains_wide.jpg">
  </div>
</div> 
```


###  Classes for hiding things at breakpoints:
```
w3-hide-small  
w3-hide-medium  
w3-hide-large   
```


The skin has Semantic HTML classes. These are for accessiblity and general SEO.
It won't hurt if a style is applied to them, but they are not intended for styling.

### These Semantic HTML classes are used in the skin alone:
```
header - Wraps 3 header segments.
nav - Only the menu itself
main - Wraps all segments between header and footer
footer - Wraps 2 footer segments.
```

### These Semantic HTML classes are for content in modules:
```
section - The entire module including all repeated content.
article - Once on each repeated content item.
aside - If there is a side column of content for the entire section or just a given article
```

### These are W3 classes that should be used in the modules:
```
w3-panel - adds vertical specing where not already provided by paragraphs nad headings. Wrap your entire module in this.
```

### These are the Rocket skin classes for layout. They are not Semantic HTML:
```
pageouter - The main outer div
pageinner - A secondary div encompassing everything.
segment - Each horizontal page section.
```

Each segment has a unique class and may have multiple columns with sub classes (not listed here).  
The segments are always the full width of the page.  
Each segment contains a w3-content and a w3-row. These apply standard W3 widths, margins and padding.  
The default w3-content max-width is set in the skin.css to 1280px and is meant to be changed as needed.  
Any given w3-content block can be made full width as in this example:  
```
.aboveheader .w3-content{
max-width: 100%;
}
```

### These are all the horizontal segments:
```
aboveheader
mainheader
belowheader
belowheader
breadcrumbsearch
contentfull
contentleft
contentright
middlefull
panelshalf
panelsthird
panelsquarter
lowerfull
footerthird
footerfull
copyright
```

### The skin applies the default container to all content panels, except for these panels, which are intended for banners/sliders:
```
aboveheader
mainheader
belowheader
```


https://www.w3schools.com/w3css/default.asp
