require 'test_helper'

class FreespaceTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Freespace::VERSION
  end

  def test_that_it_should_accept_two_args
    refute_nil  ::Freespace.get_free_space('/','MB')
  end

  def test_that_it_works_without_second_arg
    refute_nil  ::Freespace.get_free_space('/')
  end

  def test_that_it_returns_hash
    refute_nil ::Freespace.get_free_space('/')[:free_space]
    refute_nil ::Freespace.get_free_space('/')[:unit]

  end

   
end
