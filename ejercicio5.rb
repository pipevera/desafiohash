datos = [{'felipe':['felipe','chile','america','masculino']},{'juan':['juan','peru','america','masculino']},{'petronilo':['petronilo','italia','europa','masculino']},{'pedro':['pedro','francia','europa','masculino']},{'darla':['darla','chile','america','femenino']},{'fernanda':['fernanda','italia','europa','femenino']},{'ximena':['ximena','alemania','europa','femenino']},{'maria':['maria','argentina','america','femenino']}]

def continentes(array)
  continentes = []
  array.each do |a|
    a.each do |b, c|
      continentes.push c[2]
    end
  end
  continentes.uniq
end

def pedros(array)
  pedros = {}
  array.each do |a|
    a.each do |b, c|
      if c[0] == 'pedro'
        pedros[b] = c
      end
    end
  end
  pedros
end

def genero(array)
  genero = []
  femenino = {}
  masculino = {}
  array.each do |a|
    a.each do |b, c|
      if c[3] == 'masculino'
        masculino[b] = c
      elsif c[3] == 'femenino'
        femenino[b] = c
      end
    end
  end
  genero.push femenino
  genero.push masculino
  genero
end

def hash_continentes(array)
  continentes = continentes(array)
  a = []
  b = []
  array.each do |x|
    x.each do |key, value|
      if value[2] == continentes[0]
        a.push value[1]
      elsif value[2] == continentes[1]
        b.push value[1]
      end
    end
  end

  hash = {}

  hash[continentes[0]] = a.uniq
  hash[continentes[1]] = b.uniq

  hash
end

cantidad_personas = datos.inject(0) { |cont, iterador| cont += 1 }

continentes = continentes(datos)

lista_pedros = pedros(datos)

lista_mujeres = genero(datos)[0]

lista_hombres = genero(datos)[1]

print hash_continentes(datos)