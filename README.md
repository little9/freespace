# Freespace

A Ruby module that allows you to get the free space available on a path in a human readable form.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'freespace'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install freespace

## Usage

```ruby

Freespace::get_free_space('/','GB')

```

This will return a hash with the amount of freespace and unit:

```ruby

{:free_space=>25, :unit=>"GB"}

```
