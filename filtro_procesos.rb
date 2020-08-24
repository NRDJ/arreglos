def bigger_numbers(arr)
    num = ARGV[0].to_i
    length = arr.count
    new_arr = []

    length.times do |i|
        if arr[i] > num
            new_arr << arr[i]
        end
    end
    return new_arr
end

def read_file(filename)
    data = open(filename).readlines
    lines = data.count
    array = []

    lines.times do |i|
        array << data[i].to_i
    end
    bigger_numbers(array)
end

def new_file(data_to_w)
    File.open("procesos_filtrados.data", "w") do |f|     
        f.write(data_to_w.join("\n"))   
    end
end

big_nums = read_file("procesos.data")
new_file(big_nums)

