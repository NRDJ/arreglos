visitas = [1000, 800, 250, 300, 500, 2500]

def promedio(arr)
    suma = arr.inject(0){|sum,i| sum + i }
    division = suma / arr.length
end

puts promedio(visitas)

