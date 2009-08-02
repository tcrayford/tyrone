![tyrone](http://github.com/chrislloyd/tyrone/raw/master/logo.png)

<small>a rapid prototyping fix. tyrone be great with uis. he loves em so much and will care the shit out of them. my boy tyrone is definitely the right man for the job, i aint playin. by [chris](http://chrislloyd.com.au).</small>

![screenshot](http://cloud.github.com/downloads/chrislloyd/tyrone/tyrone-0.1.0.png)

## employing tyrone

install the gem:

    gem install tyrone

or

    rip install tyrone

your project needs tyrone, fo real:

    gem 'tyrone'; require 'tyrone'

for sure its ready to go, alright? u may want to make ur app down wid da bidness: (dis goes in ur `config.ru`)

    set :views => File.join(File.dirname(__FILE__), 'mockups')
    set :app_file => # where you need tyrone to be, he will be there

if you be a real player, you can knock out the old shit and add da new shit:

    require 'tyrone'
    get '/my-action' { ... }

## associates

* [b-webstar](http://plus2.com.au) for his playground system what.
* [p-oye](http://github.com/philoye) for makin rehearsals.

## givin' back

fork the project, submit a pull request and I'll get to it straight away. or you can just checkout the source by running:

    git clone git://github.com/chrislloyd/tyrone.git

## license

Copyright (c) 2009 Chris Lloyd.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the 'Software'), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

