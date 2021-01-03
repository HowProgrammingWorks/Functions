#Immediately-invoked function

-> (;foo) do
  foo = 'bar'
  puts 'foo!'
end.()


-> do
  foo = 'bar'
  puts 'anonymous!'
end.()

lambda {
  foo = 'lambda'
  puts foo
}.()


def isodd
  puts 'block'
end

isodd
