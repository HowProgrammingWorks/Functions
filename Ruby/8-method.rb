
obj1 = 'boo'
obj1.define_singleton_method(:inc) do |a|
  return a = a + 1
end

obj1.define_singleton_method(:sum) do |a, b|
  return a + b
end

obj1.define_singleton_method(:max,  proc {|a, b| 
a > b ? a : b})

puts "obj1.inc(5) = #{obj1.inc(2)}" 
puts "obj1.sum(2, 9) = #{obj1.sum(2, 9)}"
puts "obj1.max(2, 99) = #{obj1.max(2, 99)}"
