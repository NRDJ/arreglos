arr_1 = [1000, 800, 250, 300, 500, 2500]
arr_2 = [10, 500, 690, 3300, 375]
 
def compara_arrays(arr_1, arr_2)
    suma1 = arr_1.inject(0){|sum,i| sum + i }
    promedio1 = suma1 / arr_1.length

    suma2 = arr_2.inject(0){|sum,i| sum + i }
    promedio2 = suma2 / arr_2.length

    if promedio1 > promedio2
        promedio1
    elsif promedio2 > promedio1
        promedio2
    else
        'iguales'
    end
end

puts compara_arrays(arr_1, arr_2)

