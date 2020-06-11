# 5.times do |i|
#     puts 'Repetindo ' + i.to_s + ' vez(es)'
#     i +=  1
# end

#init = 0

# while init <= 10 do
#     puts 'Repetindo ' + init.to_s + ' vez(es)'
#     init +=  1
# end
 
# for item in (1...10)
#     puts 'Repetindo ' + item.to_s + ' vez(es)'
# end


Vingadores = ['Ironman', 'Hulk', 'Spiderman']


Vingadores.each do |v|
    if v != 'Spiderman' 
        puts v
    end
end
