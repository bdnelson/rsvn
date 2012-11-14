# Rsvn

## Description
Gem to provide basic access to Subversion information (wraps Ruby SVN bindings).
It assumes standard Subversion usage is in effect (i.e. branches, tags, trunk) and
only interacts with the repository in a read-only manner.  The gem was written
to be used with Ruby on Rails, but can be used whereever it is needed. 

## Why?
I ran into this need a couple of times while working with deployment and build
scripts and decided to roll the functionality up into a gem for easier use.

## Requirements
This gem depends on the SVN ruby bindings being installed.

## Installation

Add this line to your application's Gemfile:

    gem 'rsvn'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rsvn

## Configuration

The gem takes a minimial configuration.  Simply specify the authentication type 
(and supporting information) to be used for the connection:
* :anonymous - no authentication information will be passed
* :basic - username and password is required

In a Rails application, you should create an initializer for your Subversion 
connection information (i.e. `config/initializers/rsvn.rb`).  

### Anonymous Connection
```ruby
# No additional information is required.
Rsvn::Config.authentication_method = :anonymous
```

### Basic Authentication Connection
```ruby
# Username and password are required
Rsvn::Config.authentication_method = :basic
Rsvn::Config.username = 'username'
Rsvn::Config.password = 'password'
```

## Usage

### Get Branches List

```ruby
# Get branches list
branches = Rsvn.branches("http://svn.apache.org/repos/asf/subversion")
```

### Get Tags List

```ruby
# Get tags list
tags = Rsvn.tags("http://svn.apache.org/repos/asf/subversion")
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Links


