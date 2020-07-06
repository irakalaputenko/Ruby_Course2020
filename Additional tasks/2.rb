puts "Введіть ціну: "
    price = gets.chomp
    price = price.to_f

    puts "Вкажіть знижку за одиницю товару: "
    discount = gets.chomp
    discount = discount.to_f

    puts "Кількість купленого товару: "
    count = gets.chomp
    count = count.to_f

    total_price = price * count
    discount_price = (price - ((price * discount)/100)) * count
    saved_money = total_price - discount_price
    puts "Заозаджена сума: #{saved_money}"