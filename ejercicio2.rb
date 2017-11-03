restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

def plato_mas_caro(a)
  cont = 0
  a.each do |x, y|
    if y > cont
      cont = y
    end
  end

  b = {}

  a.each do |x, y|
    if cont == y
      b[x] = y
    end
  end

  b.each do |x, y|
    return "el plato mas caro es #{x} con un valor de #{y}"
  end
end

def plato_mas_barato(a)
  cont = 999
  a.each do |x, y|
    if y < cont
      cont = y
    end
  end

  b = {}

  a.each do |x, y|
    if cont == y
      b[x] = y
    end
  end

  b.each do |x, y|
    return "el plato mas barato es #{x} con un valor de #{y}"
  end
end

promedio = (plato_mas_caro(restaurant_menu)[-1].to_i + plato_mas_barato(restaurant_menu)[-1].to_i) / 2

puts plato_mas_caro(restaurant_menu)
puts plato_mas_barato(restaurant_menu)
puts "el promedio de los dos platos es #{promedio}"

nombres = []
valores = []

restaurant_menu.each do |name, value|
  nombres.push name
  valores.push value
end

restaurant_menu.each { |name, value|
  restaurant_menu[name] = value *= 1.19
}

restaurant_menu.each do |name, value|
   a = name.split(' ')
   b = false
   a.each_with_index do |x, y|
     if y > 0
       b = true
     end
   end
   if b == true
     restaurant_menu[name] = value *= 0.8
   end
end

puts restaurant_menu
