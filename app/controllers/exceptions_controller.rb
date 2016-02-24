class ExceptionsController < ApplicationController
  def index; end

  def trigger
    random_choice = 1 + rand(10)
    case random_choice
    when 1
      1 / 0
    when 2
      [1, 2, 3].first("two")
    when 3
      eval("1+1=2")
    when 4
      "hello".to_ary
    when 5
      [1, 2, 3].first(4, 5)
    when 6
      Float::INFINITY.to_r
    when 7
      puts foo
    when 8
      Regexp.new("?")
    when 9
      [1, 2, 3].drop(1 << 100)
    when 10
      h = {}
      h.fetch("baz") #=> KeyError: key not found: "baz"
    end
  end
end
