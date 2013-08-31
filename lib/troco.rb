def troco(preco, valor)
  amount = (valor-preco)
  a = []
  
  [10,5,1, 0.5, 0.1, 0.05, 0.01].each do |n|
    a += ([n]*(amount/n))
    amount = amount % n
    puts amount
  end
  
  a
end