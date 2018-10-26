# Repository for the static website https://www.minecraft-anarchy.org

## Local development
```bash
# docker kill $(docker ps -q)
docker build -t www.minecraft-anarchy.org .
docker run -itd --rm -p 8081:80 www.minecraft-anarchy.org:latest
```
Then access http://localhost:8081


## Website template

This website is based on this html 5 template: https://html5up.net/dimension

Dimension by HTML5 UP
html5up.net | @ajlkn
Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)


This is Dimension, a fun little one-pager with modal-ized (is that a word?) "pages"
and a cool depth effect (click on a menu item to see what I mean). Simple, fully
responsive, and kitted out with all the usual pre-styled elements you'd expect.
Hope you dig it :)

Demo images* courtesy of Unsplash, a radtastic collection of CC0 (public domain) images
you can use for pretty much whatever.

(* = not included)

AJ
aj@lkn.io | @ajlkn


Credits:

	Demo Images:
		Unsplash (unsplash.com)

	Icons:
		Font Awesome (fontawesome.io)

	Other:
		jQuery (jquery.com)
		Responsive Tools (github.com/ajlkn/responsive-tools)
