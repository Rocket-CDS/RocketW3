# RocketW3 Skin

This skin is primarily for use with the Rocket Suite of modules. The templates for these modules contain a couple of wrapper divs (containerouter and containerinner) that work with the skin.css to provide boxed (max 1280px) and unboxed (full-width) content within the single-column content rows. The multi-column rows are always boxed unless you set them to be full width via CSS.

Content spacing:
The skin provides horizontal spacing between content pane columns. 
The containers provide neither vertical nor horizontal spacing. 
Vertical spacing is expected to be provided by the module content.

The supplied containers are:
Boxed - This is automatically applied in all multi-column and single column rows.
Unboxed - This is automatically applied in the Aboveheader, Belowheader and Footerfull panes.
Default - This should be manually applied to any non-Rocket DNN module to provide boxed content.
Titled - This is the same as Default but with the DNN Title feature present.

Container usage:
If you insert a Rocket module into Aboveheader, Belowheader or Footerfull, it will take up the entire space because it applies the unboxed container. This is useful for banners/sliders.

If you insert a Rocket module into a single-column row such as the ContentPane, it will show the content boxed at up to 1280px width. If you would like that module to instead stretch to full-width, simply change the container to unboxed.

Skin usage:
Examine the skin.css for additional notes and the available selectors/classes.

All page rows (segments), whether single or multi-column, can be separately styled with a background colour or image running the entire width of the page.

Any multi-column row (segment) can be stretched to full-width with simple CSS. For example, the row with the 2 columns ColumnLeft and ContentRight is boxed by default, even when using unboxed containers. To stretch these columns to full-width you would use:
.maincontentright .w3-content{max-width:100%;}


Additional notes:

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


Within a module, to make multiple column content with space between each column, but still aligned left and right, use w3-row-padding w3-section w3-stretch as in this example:
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
