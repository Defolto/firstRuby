printf "Добро пожаловать в приложение по корректному ввода данных. Для работы с приложением, вводите положительные числа. В случае, если всё правильно введено, то программа даст об этом знать. Для выхода введите: 99.999\n"
count_true = 0
count_false = 0
while true
    print "введите число> "
    count = gets.strip

    begin
        if count == "99.999"
            print "Правильных попыток: #{count_true}\n"
            print "Неправильных попыток: #{count_false}\n"
            break
        end
        count = Integer(count)
    rescue 
        print "Вы ввели не целое число!\n"
        next
    end

    if count <= 0
        print "Вводите положительные, целые числа!\n"
        count_false += 1
    else
        print "Всё правильно! Вы ввели: #{count}\n"
        count_true += 1
    end
end