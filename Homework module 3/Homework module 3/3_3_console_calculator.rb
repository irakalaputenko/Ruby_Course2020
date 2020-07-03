﻿# Написати калькулятор для консолі, який приймає на вхід 3 числа
# код операції та два числа, до яких ця операція застосовується

# Ви маєте дописати частину з опрацювання вхідних параметрів згідно висвітленої логіки,
# починаючи від 21 рядка, закінчуючи 47.

class Calculator

  # Алгоритм

  # Програма має бути циклом зчитування-опрацювання-вивід результату.
  # він реалізується у блоці коду під назвою console_calculator.
  # Програма має закінчувати роботу при зчитування символу "q"
  # 
  # Приклад вводу " 1 4 6.5"
  # Програма зчитує рядок, опрацьовує значення код операції,
  # приводить два числа до чисельного типу та виводить результат - "10.5"
  # 
  # І знову очікує вводу від користувача

  def calculation arr
    # тут слід імплементувати застосування відповідної операції до двох чисел:
    # першим елементом масиву-аргументу arr приходить код команди.
    # 1 => додавання
    # 2 => віднімання
    # 3 => множення
    # 4 => ділення
    # якщо введений код q - слід повернути false

    possible_operations = ["1", "2", "3", "4","q"]
   if (!possible_operations.include? arr[0])
     puts "Введений код не існуючої операції"
   else
     a, b = arr[1].to_f, arr[2].to_f

    # 
    # для тестування наступної логіки слід розкоментувати наступний рядок
    # arr = ["1", "1", "1"]
    # першим параметром є код операції, далі йдуть два операнди
    # напр. arr = ["1", "2", "3"]
    #               +    2    3
    # =>  2 + 3
    # 
    
    case arr[0]
    when "1" then a+b
    when "2" then a-b
    when "3" then a*b
    when "4" then a/b
    when "q" then false
    else
      "Введіть код існуючої команди!"
    end
  end
end

  # Тут нічого змінювати не потрібно !
  def console_calculator

      puts "Для обчислення бінарних операцій слід записути через пробіл \n код операції та два операнди"
      puts "Коди операцій 1: +, 2: -, 3: *, 4: /"
      puts "Для виходу з програми введіть символ 'q'"

      while 1 == 1
        input = gets.chomp
        arr = input.split(" ")

        result = calculation arr

        break unless result

        puts result
      end

  end
end