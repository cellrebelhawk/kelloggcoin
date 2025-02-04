# Cryptocurrency is all the rage. You have decided to create your own,
# KelloggCoin, that will massively disrupt financial markets at the Global
# Hub.

# Don't change the following code, which represents a series of transactions, each
# of which represents a transfer of KelloggCoin from one user to another – transactions 
# with no from_user are from the "ICO" (Initial Coin Offering)

blockchain = [
  { "from_user" => "ico", "to_user" => "ben", "amount" => 20000 },
  { "from_user" => "ico", "to_user" => "brian", "amount" => 20000 },
  { "from_user" => "ben", "to_user" => "evan", "amount" => 9000 },
  { "from_user" => "brian", "to_user" => "anthony", "amount" => 7000 },
  { "from_user" => "evan", "to_user" => "anthony", "amount" => 400 },
  { "from_user" => "ben", "to_user" => "anthony", "amount" => 1500 },
  { "from_user" => "anthony", "to_user" => "ben", "amount" => 4500 },
  { "from_user" => "anthony", "to_user" => "evan", "amount" => 1750 }
]

# Write code below that returns the number of KelloggCoin that each user has in their 
# KelloggCoin "wallet".

# It should print out:
# Ben's KelloggCoin balance is 14000
# Brian's KelloggCoin balance is 13000
# Evan's KelloggCoin balance is 10350
# Anthony's KelloggCoin balance is 2650

# 👇👇👇 Your code HERE 👇👇👇

ico = 40000
ben = 0
brian = 0
evan = 0
anthony = 0

index = 0

loop do
  if index == blockchain.size
    break
  end 
  
from_user = blockchain[index]["from_user"]
to_user = blockchain[index]["to_user"]
amount = blockchain[index]["amount"]

case from_user
when "ico"
  ico = ico - amount
when "ben"
  ben = ben - amount
when "brian"
  brian = brian - amount
when "evan"
  evan = evan - amount
when "anthony"
  anthony = anthony- amount
end

case to_user
when "ben"
  ben = ben + amount
when "brian"
  brian = brian + amount
when "evan"
  evan = evan + amount
when "anthony"
  anthony = anthony + amount
end

  index = index + 1

end

puts "Ben's KelloggCoin balance is #{ben}"
puts "Brian's KelloggCoin balance is #{brian}"
puts "Evan's KelloggCoin balance is #{evan}"
puts "Anthonys's KelloggCoin balance is #{anthony}"


#puts blockchain[0]["from_user"]
#puts blockchain[0]["to_user"]
#puts blockchain[0]["amount"]

#p blockchain[3]["from_user"]

# ben_balance = blockchain[]

#p blockchain[index]["from_user"]
