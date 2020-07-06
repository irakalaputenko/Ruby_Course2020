puts "Введіть номер місяця: "
month = gets.chomp
month = month.to_i

quarter1 = "Перший"
quarter2 = "Другий"
quarter3 = "Третій"
quarter4 = "Четвертий"

while month > 12 || month < 1 do
    puts "Error | Спробуйте ще "
    month = gets.chomp
    month = month.to_i
end

case month
when 1,2,3 then puts "Це #{quarter1} квартал"
when 4,5,6 then puts "Це #{quarter2} квартал"
when 7,8,9 then puts "Це #{quarter3} квартал"
when 10,11,12 then puts "Це #{quarter4} квартал"
end