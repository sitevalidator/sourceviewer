# Source Viewer

Source Viewer is _source code viewing as a service_, a simple web service that allows you to see the source code of a web page (or any other file that can be accessed through an URL).

[![source viewer screenshot](https://dl.dropboxusercontent.com/u/2268180/sourcecodeviewer.png)](http://sourceviewerdemo.herokuapp.com/show?url=http://github.com#line-146)

## Why?

The source code of web pages can already be seen by using the contextual menu "view page source" on your web browsers, but this is not enough.

I wanted the ability to jump directly to a line by using an anchor, and also to colorize the syntax (not all web browsers do this automatically).

Sometimes, you can't even use the contextual menu as it has been disabled on the web page that you want to inspect.

But the main reason was to have a way to link to this source view directly, instead of using a contextual menu.

## Deploying

This is a Sinatra app, ready to be deployed into production on your server. This is extremely easy to do on Heroku, you just need to push it and you're ready to go.

## Using it

The app has just one entry point, that accepts a single parameter for the URL to be shown, here's an example:

http://sourceviewerdemo.herokuapp.com/show?url=https://github.com

This will fetch the URL and show it, that's all.

You can also jump to a line by using an anchor on the URL, like this:

http://sourceviewerdemo.herokuapp.com/show?url=https://github.com#line-137

## Following redirections

This app uses the [OpenUriRedirections](https://github.com/jaimeiniesta/open_uri_redirections) gem, that patches Ruby's OpenURI to allow redirections from HTTP to HTTPS and vice versa.

## Specifying an User Agent

If you want to specify a custom User Agent to be used when fetching the page, you can use the `user_agent` param, like this:

http://sourceviewerdemo.herokuapp.com/show?url=https://github.com&user_agent=Gadget

## Choosing a theme

You can use a different Highlight.js CSS theme using the `theme` param, like this:

http://sourceviewerdemo.herokuapp.com/show?url=https://github.com&theme=arta
http://sourceviewerdemo.herokuapp.com/show?url=https://github.com&theme=ascetic
http://sourceviewerdemo.herokuapp.com/show?url=https://github.com&theme=brown\_paper
http://sourceviewerdemo.herokuapp.com/show?url=https://github.com&theme=dark
http://sourceviewerdemo.herokuapp.com/show?url=https://github.com&theme=default
http://sourceviewerdemo.herokuapp.com/show?url=https://github.com&theme=docco
http://sourceviewerdemo.herokuapp.com/show?url=https://github.com&theme=far
http://sourceviewerdemo.herokuapp.com/show?url=https://github.com&theme=foundation
http://sourceviewerdemo.herokuapp.com/show?url=https://github.com&theme=github
http://sourceviewerdemo.herokuapp.com/show?url=https://github.com&theme=googlecode
http://sourceviewerdemo.herokuapp.com/show?url=https://github.com&theme=idea
http://sourceviewerdemo.herokuapp.com/show?url=https://github.com&theme=ir_black
http://sourceviewerdemo.herokuapp.com/show?url=https://github.com&theme=magula
http://sourceviewerdemo.herokuapp.com/show?url=https://github.com&theme=mono-blue
http://sourceviewerdemo.herokuapp.com/show?url=https://github.com&theme=monokai
http://sourceviewerdemo.herokuapp.com/show?url=https://github.com&theme=monokai\_sublime
http://sourceviewerdemo.herokuapp.com/show?url=https://github.com&theme=obsidian
http://sourceviewerdemo.herokuapp.com/show?url=https://github.com&theme=pojoaque
http://sourceviewerdemo.herokuapp.com/show?url=https://github.com&theme=railscasts
http://sourceviewerdemo.herokuapp.com/show?url=https://github.com&theme=rainbow
http://sourceviewerdemo.herokuapp.com/show?url=https://github.com&theme=school\_book
http://sourceviewerdemo.herokuapp.com/show?url=https://github.com&theme=solarized\_dark
http://sourceviewerdemo.herokuapp.com/show?url=https://github.com&theme=solarized\_light
http://sourceviewerdemo.herokuapp.com/show?url=https://github.com&theme=sunburst
http://sourceviewerdemo.herokuapp.com/show?url=https://github.com&theme=tomorrow-night-blue
http://sourceviewerdemo.herokuapp.com/show?url=https://github.com&theme=tomorrow-night-bright
http://sourceviewerdemo.herokuapp.com/show?url=https://github.com&theme=tomorrow-night-eighties
http://sourceviewerdemo.herokuapp.com/show?url=https://github.com&theme=tomorrow-night
http://sourceviewerdemo.herokuapp.com/show?url=https://github.com&theme=tomorrow
http://sourceviewerdemo.herokuapp.com/show?url=https://github.com&theme=vs
http://sourceviewerdemo.herokuapp.com/show?url=https://github.com&theme=xcode
http://sourceviewerdemo.herokuapp.com/show?url=https://github.com&theme=zenburn

# Getting development env ready

## Install gems for development

    bundle install

## Launch app in development:

We use the `rerun` gem so that it detects changes in the filesystem and reloads the app automatically.

    rerun 'ruby app.rb'

The local server will be accessible at http://localhost:4567

## License

This is free open source software uses the MIT license.
