﻿# Програма для перевірки, чи дане число є простим.
# використовується решето Ерастрофена з оптимізацією
# Оптимізація полягає в початку висіювання наступного
# не викресленого числа з його квадрату.

# Ви маєте зреалізувати логіку для формування масиву-шерета,
# його просіювання та виведення інформації, чи вказане число є простим.

class Calculator
  attr_accessor :sieve

  # створити масив з n чисел,де n - число,
  # яке ми хочемо перевірити на простоту
  def setup_prime n
    @sieve = Array.new(n)
    # тут маємо записати у масив числа від 2 до n
    # числа мають мати відповідні індекси
    # наприклад seive[10] => 10
    for i in 2...@sieve.length
      @sieve[i]= i
    end
  end

  # дана функція отримує на вхід непросіджений масив
  # на виході отримуємо масив, який містить тільки прості числа
  # на діапазоні від 2 до вказаного числа n
  def sieve_prime_upto n
    # почергово проходимось по всіх елементах масиву
    for i in self.sieve
      # принагідно перевіряємо, чи поточний елемент вже не позначений
      # якщо він позначений, можемо перейти на наступний крок циклу
      next unless i
      # якщо елемент не позначений, то починаючи від його квадрату
      # помічаємо всі кратні йому елементи в масиві
      (i * i).step(n, i) do |j|
        self.sieve[j] = nil
      end
    end

    # забрати всі позначені елементи з масиву @sieve
    # за допомогою функції compact
    self.sieve.compact!
  end

  # основна функція, яка формує масив, просіює його члени та виводить результат
  # на вході отримує число - яке ми перевірятимемо
  # на виході має повернути true - якщо число просте,
  # або false у іншому випадку.
  def sieve_prime? n
    self.sieve_prime_upto n
    return self.sieve.include? n
  end

end

c = Calculator.new
c.sieve_prime_upto 6

puts c.sieve
puts c.sieve_prime? 7