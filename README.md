# Source Viewer

This app fetches the URL passed and shows its source, like this:

http://localhost:4567/show?url=http://yahoo.com#line-425

# Getting development env ready

## Install gems for development

    bundle install

## Launch app in development:

We use the `rerun` gem so that it detects changes in the filesystem and reloads the app automatically.

    rerun 'ruby app.rb'
