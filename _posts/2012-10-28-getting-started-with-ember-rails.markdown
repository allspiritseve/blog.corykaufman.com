---
layout: blog
title: Getting started with ember-rails
---

# {{ page.title }}

If you've been wanting to start playing around with ember using Rails as a backend, but haven't quite gotten your head around what to do once ember-rails is installed, here's an introduction.

First of all, check out the [ember-rails](https://github.com/emberjs/ember-rails) README. It explains how to set up the gem, but doesn't give much guidance on next steps. 

Run the generator:

    rails generate ember:bootstrap

This will create the smallest ember app possible that actually works. Except it doesn't.

You need an application layout, a route, a controller, and a single view to be the 'wrapper' for your Ember application. Your application layout will specify the head of your HTML file, while your view can be empty (I would put something in it just to make sure things are loading, and empty it when your ember app is up and running).

  # config/routes.php
  <br>
  root :to => 'pages#index'

  # app/controllers/pages\_controller.rb
  <br>
  class PagesController < ApplicationController
    
    def index
    end

  end

  # app/views/pages/index.html.erb
  <br>
  &lt;h1&gt;Hello from Rails!&lt;/h1&gt;

When you start your rails server and open `localhost:3000`, you might notice an error in the console about jQuery. Ember requires jQuery 1.7, and you probably have jQuery 1.8 installed. 

Fix this by specifying an earlier version of jQuery rails in your Gemfile:

    gem 'jquery-rails', '~>1.0.19'

Now, your ember app should load. However, it's empty, so lets add something to your ember application template:

    # app/assets/javascripts/templates/application.handlebars
    <h1>Hello from Ember!</h1>

    {{outlet}}
