def min_coins(value)
  coins = [25, 10, 5, 1]
  answer = { 25 => 0, 10 => 0, 5 => 0, 1 => 0}

  money = value

  coins.each do |coin|
    if (money >= coin)
      amount = money / coin
      answer[coin] = amount
      money -= coin * amount
    end
  end

  return answer
end

puts min_coins(55) # { 25 => 2, 5 => 1}
