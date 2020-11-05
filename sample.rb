require 'pry'
require 'pry-byebug'
require 'active_support/all'

class String
  def to1(position)
    self[0..position]
  end
end

str = "hello"
puts str.to1(1)
