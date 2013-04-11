browse-on-github.el
========================

View files from Emacs on Github.

In the course of a project it helps to share pointers to specific files and lines of code with others. I use Github for this task, sharing URLs like: [https://github.com/gleitz/howdoi/blob/master/howdoi/howdoi.py#L156](https://github.com/gleitz/howdoi/blob/master/howdoi/howdoi.py#L156).

When sharing URLs from a project with deep directories (Scala/Java) it can be a real pain to open github.com, pick a branch, and then click through src/com/blah/blah folders until you find the file. Instead, use this command-line Python script to generate a Github URL directly from a file or directory. Also included is an elisp function to generate URLs from Emacs.

Usage:

`gitopener.py (optional: <PATH_TO_FILE>)`

Installation:

* Add the contents of browse-on-github.el to your .emacs
* Update the path in browse-on-github to point to your version of gitopener.py
* Invoke the script on Emacs with `M-x browse-on-github`

For more info see [http://blog.gleitzman.com/post/47426201896/open-files-on-github-from-emacs](http://blog.gleitzman.com/post/47426201896/open-files-on-github-from-emacs).
