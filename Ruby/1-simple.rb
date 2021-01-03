def inc(a)
  return ++a
end

max = -> (a, b) { a > b ? a : b }


puts "inc(5) = #{inc(5)}"
puts "max(8, 6) = #{max.call(8, 6)}"
