﻿# З вхідної стрічки виділити всі підрядки, довжиною більше 5 та вивести їх у сортованому вигляді

# Ви маєте дописати логіку сортування масиву зі всіх слів з вхідного речення,
# довжина яких є строго більшою за 5.

class Calculator
  def string_sort input_string

    # вхідний рядок записуватиметься у змінну temp
    temp = input_string

    # temp слід розділити на множину підрядків за пробіл
    arr = temp.split(" ")

    # з отриманої множини вибрати лишень ті елементи, довжина яких більша за 5
    r = Array.new
    for i in 0...arr.length
      if arr[i].length>5
        r.push(arr[i])
      end
    end


    # посортувати масив та вивести його
    r.sort!

    # тут його слід вивести
    puts r

  end
end