def peliculas_por_genero(hash)
    generos = []
    hash.each do |x, y|
      generos.push y[:genre]
    end

    generos = generos.uniq
    genres = {}
    a = []

    generos.each do |genre|
      hash.each do |x, y|
        if y[:genre] == genre
          a.push x
        end
      end
      genres[genre.to_sym] = a
      a = []
    end
    genres
end
def contar_peliculas(hash)
  peliculas = peliculas_por_genero(hash)
  cont = 0
  peliculas.each do |x, y|
     y.each do |z|
       cont += 1
     end
     peliculas[x] = cont
     cont = 0
  end
  peliculas
end
def filtro_year(hash, start, finish)
  a = 0
  filtradas = {}
  hash.each do |key, value|
    a = value[:realease_date].split(' ')

    if a[-1].to_i >= start && a[-1].to_i <= finish
      filtradas[key] = value[:realease_date]
    end
  end
  filtradas
end
def rating(hash)
  peliculas = {}

  hash.each do |key, value|
    bad = 0
    good = 0
    rated = 0
    value[:votes].each do |rating|
      if rating == :good
        good += 1
      elsif rating == :bad
        bad += 1
      end
      if good == bad
        rated = :regular
      elsif
        good > bad
        rated = :buena
      else
        rated = :mala
      end
    end
    peliculas[key] = rated
  end
  peliculas
end
#los resultados estan en movies.rb