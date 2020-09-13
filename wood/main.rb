# XXX/ Этот код необходим только при использовании русских букв на Windows
if (Gem.win_platform?)
    Encoding.default_external = Encoding.find(Encoding.locale_charmap)
    Encoding.default_internal = __ENCODING__

    [STDIN, STDOUT].each do |io|
        io.set_encoding(Encoding.default_external, Encoding.default_internal)
    end
end
# /XXX

printf "Добро пожаловать в приложение по подсчёту слова 'дерево'. Для работы с приложением, вводите любые слова. В конце программы она покажет кол-во ввода слова 'дерево'. Для выхода напишите 'конец'\n"
count_wood = 0
while true
    print "введите слово> "
    count = gets.chomp

    if count == "конец"
        print "До свидания!"
        break
    elsif count == "дерево"
        count_wood += 1
    end

    print "Вы ввели #{count_wood} раз слово 'дерево'.\n"
end