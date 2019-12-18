def menu
  puts "Select an option: "
  puts "1) reset"
  puts "2) aula109.static"
  puts "3) casa.static"
  option = gets.chomp
  if option == 1
    system('sudo ifdown eth0')
    system('sudo ifup eth0')
  elsif option == 2
    system('sudo ip addr add 172.19.8.1/16 dev eth0')
  elsif option == 3
    system('sudo ip addr add 192.168.1.1/24 dev eth0')
  end
  else
    puts "Choose a correct option"
end
