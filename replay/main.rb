printf "Добро пожаловать в повторитель. Для работы с приложением, введите что-нибудь.\n"
while true
    print "введите строку> "
    text = gets.strip
    if text == "stop, please"
        print "До свидания!"
        break
    end
    printf "Вы ввели:\n"
    puts "#{text}\n"
    print "#{text}\n"
    printf "#{text}\n"
    p "#{text}\n"
end