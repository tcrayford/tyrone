![tyrone](http://cloud.github.com/downloads/chrislloyd/tyrone/logo.png)

<small>a rapid prototyping fix. tyrone be great with uis. he loves em so much and will care the shit out of them. my boy tyrone is definitely the right man for the job, i aint playin. by [chris](http://chrislloyd.com.au).</small>

It's always better to work from the UI down. Nobody cares about what database you are using or if you have 100% test coverage if the app itself _sucks_. Tyrone likes UIs. Like his community boxing gym, he likes to encourage good practices right from the start. He helps you get up and running prototyping UIs as quickly as possible so you can't procrastinate solving the real problems in your app.

(For more information about Tyrone's intentions, please read the [associated article](http://chrislloyd.com.au/post/154530835/databases-are-for-pussies))

![screenshot](http://cloud.github.com/downloads/chrislloyd/tyrone/tyrone-0.1.0.png)


## Installing

    {gem,rip} install tyrone

Then, to get Tyrone started on your job:

    tyrone [NAME OF JOB]

Bada bing!

## Features

Tyrone believes in tough love. You're going to have to do alot of work yourself. However, he does want to give the pups a headstart. Your job _will_ use HTML 5 and comes with a HTML 5 `reset.css`. It's the way of the future and will save you time (see `input[placeholder]`). If you really object you can turn HTML 5 off, just by placeing this line in your Sinatra file:

    set :haml => {:format => :xhtml}

Remember, it's just a Sinatra app so everything you can do in Sinatra you can do in Tyrone. However, you should note that the default behaviour of Sinatra is to process Sass files in the 'views' directory (or 'mockups' in Tyrone). Tyrone doesn't think that sytles are "views" so you can place your Sass files in 'public/css' and they'll get processed automagically. Word.

Straight out of compton, Tyrone be givin' u some crunk prototyping scripts.

  1. [states.js](http://github.com/toolmantim/states.js) &mdash; [t-star](http://toolmantim.com)'s script lets you hide and show bits of your UI so you can simulate state. For example hide and show a logged in user's account controls. Think [Polypage](http://github.com/andykent/polypage) on a diet.
  2. [grid.js](http://gist.github.com/160497) &mdash; A handy tool which overlays vertical and horizontal grids when SHIFT-v or SHIFT-h are pressed. By default it is applied to `body` but you can change this in `application.js`. Big ups [byrne-diddy](http://myles.id.au).

Some mockup helpers are:

  * `hidden` &mdash; Just returns `{:style => 'display:none'}` so you can quickly hide elements. Useful when doing JS hiding and showing.
  * `mockup_path(mockup)` &mdash; Returns a URL to another mockup.

And that's all.


## Associates

* [b-webstar](http://github.com/plustwo) for his playground system what.
* [p-oye](http://github.com/philoye) for makin rehearsals.
* [t-star](http://github.com/toolmantim) for the awesome states.js
* [byrne-diddy](http://github.com/quackingduck) for the original grid js/images.

## Givin' Back fo' the Crack

Fork the project, submit a pull request and I'll get to it straight away. _Or_ you can just checkout the source by running:

    git clone git://github.com/chrislloyd/tyrone.git

## License

Copyright (c) 2009 Chris Lloyd.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the 'Software'), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

