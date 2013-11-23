PlaceImg
====

PlaceImg is a simple gem that allows you to quickly and easily generate placeholder images via an easy to use view helper.

Placeholder images are generated via ImageMagick and are embedded in your views dynamically as data URLs. This means you won't need to clutter up image directories with junk files and you won't need to rely on an external source for placeholder iamges.

Installation
----

Installing PlaceImg is as easy as running:

    gem install placeimg

###Requirements

PlaceImg requires you have the following on your system:

* ImageMagick
* Ghostscript

###Gem Dependancies

PlaceImg has the following gem dependencies:

* Rails v3.0 or greater
* RMagick

Usage
----

Using PlaceImg is simple. Just call the `placeholder` helper method anywhere inside your view files that you'd like to put a placeholder image.

The default placeholder is a 250x250px greyscale image.

    <%= placeholder %>

###Customizing the Placeholder

You can also customize your placeholder image by passing a variety of options to it:

* `h` - The height of the image in pixels
* `w` - The width of the image in pixels
* `bg` - The background color of the image, as a word (e.g. "red") or a hex code (e.g. '#f00' or '#ff0000')
* `fg` - The foreground (text) color of the image, as a word (e.g. "white") or a hex code (e.g. '#fff' or '#ffffff')
* `class` - A string of one or more class names to apply to the generated image tag
* `id` - An ID to apply to the generated image tag

For Example:

    <%=
      placeholder({
        h: 90,
        w: 760,
        bg: '#777',
        fg: '#fff',
        class: 'banner',
        id: 'top-sponsor'
      })
    %>

You can pass some, all, or no options to the helper. Below are the defaults:

* bg = #ccc
* fg = #777
* h = 250
* w = 250
* class = *empty string*
* id = *empty string*
