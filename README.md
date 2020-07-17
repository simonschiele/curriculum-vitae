# Simons Curriculum Vitae
> Curriculum Vitae based on LaTeX template `moderncv`

Like every developer, I need a CV from time to time :-)

I use this stripped down version of `moderncv` that fits my needs quite well. Most likely I'm
misusing the template heavily, but it does it's job, is easy to maintain and the output looks well.

If you are not interested in the template, but the CV itself, you can use the
downloads of the latest builds:

- [Curriculum Vitae - Simon Schiele (english)](publish/simon_schiele_cv_english.pdf)
- [Curriculum Vitae - Simon Schiele (german)](publish/simon_schiele_cv_german.pdf)

If you want to get in contact with me, feel free to contact me by
[mail](mailto:simon.codingmonkey@gmail.com "mailto:simon.codingmonkey@gmail.com")
or via the contacts provided in the CV itself.


## Build

Clone the repository:
```bash
# Clone the repo
$ git clone https://github.com/simonschiele/curriculum-vitae
$ cd curriculum-vitae/
```

Since the depends for latex are huge and I don't want to have these installed in
my day-to-day setups, I usually build this CV via a Docker container.

Build via docker:
```
# Install depends (debian)
$ sudo apt-get install docker.io

# Build container + documents using make
$ make containerbuild
```

Local builds are of course also supported:
```
# Install depends (debian)
$ sudo apt-get install texlive-full texlive-lang-german

# Build using make
$ make
```


## Building

Inheritence in latex is weird. Loading from subdirectories changes the namespace and
produces ugly warnings. To not have that problem and still be able to cleanly work
with subdirectories the CV requires an overwritten TEXTINPUTS environmental variable.
See the Makefile for more details.


## Container

The Docker container used to build the CV is based on the default debian:testing image
and pretty much only installs 'make' and 'texlive-full' on top. That is not very slim
but should work for most of my latex needs.


## Licence

This CV template is based on 'moderncv'. Copy was taken on 2020-02-11 and used the
latest master at that time (2033517d3f29f9c16af1b3421d52f281e94aa2a5)

Original author: Xavier Danaux (xdanaux@gmail.com)
Github: https://github.com/xdanaux/moderncv/
Licence: CC BY-NC-SA 3.0 (http://creativecommons.org/licenses/by-nc-sa/3.0/)

Changes, build-stuff and the CV tex files: Simon Schiele (simon.codingmonkey@gmail.com)


## Author

**Simon Schiele** ([simon.codingmonkey@gmail.com](mailto:simon.codingmonkey@gmail.com))
