pasos = ["100", "21", "231as", "2031", "1052000", "213b", "b123"]

#Convierte todo a strings para poder evaluar integers
pasos = pasos.map {|e| e.to_s}

def clear_steps(pasos)
    lowercase = ('a'..'z')
    uppercase = ('A'..'Z')

    pasos_no_letters = pasos.reject{ |e| e.count("a-zA-Z") > 0}

    only_integers = pasos_no_letters.map { |e| e.to_i}

    filtered_array = only_integers.reject { |e| (e > 10000 || e < 200)}
end

print clear_steps(pasos)
puts


# def clear_steps(pasos)

#     alphabet = Array("a".."z")
#     only_strings = []
#     only_integers = []

#     #Agrega los elementos que incluyen letras a un array 
#     #y lo resta del array original
#     for e in pasos
#         for letter in alphabet
#             if e.include?(letter)
#                 only_strings.push(e)
#                 break
#             end
#         end
#         new_pasos = pasos - only_strings
#     end

#     #Convierte cada elemento del array en integer y elimina
#     #los mayores a 100k y menores a 200
#     for e in new_pasos
#         e = e.to_i
#         if e <= 100_000 && e >= 200
#             only_integers.push(e)
#         end
#     end
#     "Retornado arreglo filtrado: #{only_integers}"
# end

# puts clear_steps(pasos)


