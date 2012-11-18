# SimpleBreadcrumbs

**Note** This gem is a WIP!

Super-simple breadcrumbs for you and me! Probably most useful in
a controller-type class, but you can put it anywhere.


### Why?

There is another gem out there does basically this same thing.

### ...Why?

I wanted to!

### Why?

Chicks, man.


## Installation

Add this line to your application's Gemfile:

    gem 'simple_breadcrumbs'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install simple_breadcrumbs


## Usage

With the `breadcrumb` method, which takes arguments to build your
breadcrumbs.

    def index
      breadcrumb "Posts", posts_path
      @posts = Post.all
    end
    
Need to define more than one breadcrumb? Just pass more arguments!

    breadcrumb "Posts", posts_path, @post.title, post_path(@post)

Don't want a link? Don't provide one!

    breadcrumb "Home"
    breadcrumb "Posts", nil, @post.title, post_path(@post)


## Contributing

Fork, fix, and send a pull request
