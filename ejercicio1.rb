hash = {"x": 1, "y":2}

hash['z'] = 3
hash[:x] = 5
hash.delete(:y)

puts hash

if hash.include?('z')
  puts 'yeeah'
end

def invertir(x)
  a = {}
  x.each do |key, value|
    a[value] = key
  end
  return a
end

hash = invertir(hash)

print hash