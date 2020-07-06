puts "Введіть  номер планети для отримання її назви: "
number = gets.chomp
number = number.to_i

mercury = "Меркурій"
venus = "Венера"
jupiter = "Юпітер"
earth = "Земля"
mars = "Марс"
neptune = "Нептун"
saturn = "Сатурн"
uranus = "Уран"
pluto = "Плутон"

while number.to_i >9 || number.to_i <1 do
    puts "Error | спробуйте ще"
       number = gets.chomp
       number=number.to_i
end
    case number
    when 1 then puts"Планета #{mercury} "
    when 2 then puts"Планета #{venus} "
    when 3 then puts"Планета #{earth} "
    when 4 then puts"Планета #{mars} "
    when 5 then puts"Планета #{jupiter} "
    when 6 then puts"Планета #{saturn} "
    when 7 then puts"Планета #{uranus} "
    when 8 then puts"Планета #{neptune} "
    when 9 then puts"Планета #{pluto} "
    end