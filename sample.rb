# coding: utf-8
require 'pry'
require 'pry-byebug'
require 'active_support/all'

class String
  def to1(position)
    self[0..position]
  end
end

# Stringクラスの拡張。self[0..1]で最初の文字を抜き出すというのがよくわからないな。-> 文字列[0..1]で抜き出せる。

str = "hello"

puts str.to1(1)
puts str[0..1]
puts "13-12-2012".to_time

puts "13-12-2012".to_date
puts 'Once upon a time in a world far far away'.truncate(27, separator: ' ')
puts "🔪🔪🔪🔪🔪🔪🔪🔪🔪🔪🔪🔪🔪🔪🔪🔪🔪🔪🔪🔪".truncate_bytes(20)

# (1..10)                  .tap {|x| puts "original: #{x}" }
#   .to_a                  .tap {|x| puts "array:    #{x}" }
#   .select {|x| x.even? } .tap {|x| puts "evens:    #{x}" }
#   .map {|x| x*x }        .tap {|x| puts "squares:  #{x}" }

# 1.upto( 100 ){| num |
#   text = ''
#   num
#     .tap{|n| text += 'fizz' if ( n%3==0 )}
#     .tap{|n| text += 'buzz' if ( n%5==0 )}
#     .tap{|n| text += n.to_s if text.empty? }
#     .tap{ puts text }
# }

puts 'Once upon a time in a world far far away'.truncate_words(4)
