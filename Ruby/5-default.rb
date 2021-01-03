def fnNew(a, b = "Hello", c = 5)
  puts(a, b, c)
end

fnNew(1, 2, 3)
fnNew(1, 3)
fnNew(1)





def fnOld(a, b, c)
  b = b || "Hello"
  c = c || 5
  puts(a, b, c)
end

fnNew(1, 2, 3)
fnNew(1, 3)
fnNew(1)
