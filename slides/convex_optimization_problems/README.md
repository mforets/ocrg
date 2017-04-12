- The slides are written in [markdown](https://es.wikipedia.org/wiki/Markdown), see also a [cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet). It is a format that looks like plain text with some special annotations. 

- For working in the slides you can use any markdown editor (with support for Mathjax, and with the standard latex conventions). However there are editors with real-time latex rendering (like splitting the view into two panels). In my case I use Atom editor and with the preview package Markdown Preview Plus. For quick editing (in Mac), I think [MacDown](https://macdown.uranusjr.com/) is also a great tool.

- To convert the markdown "source" to HTML slides, I use [pandoc](http://pandoc.org/):

```
$ pandoc --mathjax -t slidy -s slides_ch4_boyd.md -o slides_ch4_boyd.html
```

- In practice I have a bash script that can be called as in `./convert.sh -f htmlslides main.md`. It also generates PDF output. The problem is that it will have trouble with some HTML code (for instance the `<detail>` environments used to hide/display some information). 

- Some tips: 

    1. When you open the `slides_ch4_boyd.html`, press the `K` key will disable advance with mouse click. To move forward/backward, use the right/left key. Disabling the mouse click allows using HTML/Javascript embedded code (e.g. `<detail>` blocks).

    2. To display the presentation using Chrome, follow these steps:
        1. View $\to$ Always show toolbar in full screen : off.
        2. Press `CMD + CTRL + F`.

