personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edad = [32, 28, 41, 19]

def mixarray(a, b)
  hash = {}
  a.each_with_index do |v, i|
    b.each_with_index do |x,y|
      if y == i
        hash[v.to_sym] = x
      end
    end
  end
  hash
end

def edadh(hash)
  edad = []
  hash.each do |x, y|
     edad.push y
  end
  edad
end

personas_hash = mixarray(personas, edad)

edad(personas_hash) #devuelve un array con las edades de personas_hash