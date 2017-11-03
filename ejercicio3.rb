inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras": 6}

def item_mas_stock(a)
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
    return "#{x}: #{y}"
  end
end

eleccion = 0

while eleccion != 5
  puts '1) agregar item al inventario'
  puts '2) ver stock total'
  puts '3) ver item con mayor cantidad de stock'
  puts '4) consultar si item existe en el inventario'
  puts '5) salir'

eleccion = gets.chomp.to_i

  if eleccion == 1
    puts 'ingresar nombre y cantidad separados por una coma'
    puts 'ejemplo: celulares,100'

    item = gets.chomp

    item = item.split(',')
    nombre = 0

    item.each_with_index do |x, y|
      if y == 0
        nombre = x
      elsif y == 1
        stock = x.to_i
        inventario[nombre.to_sym] = stock
      end
    end
  elsif eleccion == 2
    puts ''

    inventario.each do |k, v|
      puts "#{k}: #{v}"
    end
    puts ''

  elsif eleccion == 3
    puts ''
    puts item_mas_stock(inventario)
    puts ''

  elsif eleccion == 4
    puts 'ingresar item a consultar'
    item = gets.chomp.to_sym

    if inventario.include?(item)
      puts ''
      puts "si hay #{item}"
      puts ''
    else
      puts ''
      puts "no hay #{item}"
      puts ''
    end
  end
end
