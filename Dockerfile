#Используем образ alpine
FROM alpine
#Устанавливаем средства компиляции C++ и git
RUN apk add gcc git g++
#Скачиваем файл исходного кода
RUN wget https://raw.githubusercontent.com/mr-molder/parvpo/main/c.cpp
#Компилируем его
RUN g++ c.cpp -o c
#Выполняем вычисления и записываем результат на хост
CMD ./c > /host/result.txt
