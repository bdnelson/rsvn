require "svn/core"
require "svn/client"

require "rsvn/version"
require "rsvn/config"
require "rsvn/branch"
require "rsvn/tag"

module Rsvn
  def self.get_context
    context = Svn::Client::Context.new()
    context.add_simple_provider

    if Rsvn::Config.authentication_method == :basic
      context.auth_baton[Svn::Core::AUTH_PARAM_DEFAULT_USERNAME] = Rsvn::Config.username
      context.auth_baton[Svn::Core::AUTH_PARAM_DEFAULT_PASSWORD] = Rsvn::Config.password
    end

    return context
  end

  def self.branches(uri)
    branches = Rsvn.get_context.
                    ls("#{uri}/branches").
                    first.
                    map {|x,y| x if y.directory?}.
                    compact.
                    sort {|x,y| x <=> y} rescue []

    branches.map {|x| Rsvn::Branch.new(x, uri)}
  end

  def self.tags(uri)
    tags = Rsvn.get_context.
                ls("#{uri}/tags").
                first.
                map {|x,y| x if y.directory?}.
                compact.
                sort {|x,y| x <=> y} rescue []
    tags.map {|x| Rsvn::Tag.new(x, uri)}
  end
end
