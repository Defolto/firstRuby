printf "Добро пожаловать в калькулятор сложения. Для работы с приложением, вводите числа и они будут складываться в одну общую сумму.\n"
main_summ = 0
while true
    print "Текущая сумма: #{main_summ}\n"
    print "введите число> "
    count = gets.strip

    if count == "over"
        break
    end

    begin
        main_summ += Float(count)
        print "Вы ввели: #{count}\n\n"
    rescue 
        print "Вы ввели не число (или проверьте, что дробная часть отделена точкой, а не запятой)\n"
    end
end

# При сочетании Ctrl+Z Enter выдаёт ошибку: undefined method `strip' for nil:NilClass
# При сложении строки и числа выйдет ошибка: String can't be coerced into Integer