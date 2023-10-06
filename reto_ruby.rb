# reto_ruby

#entrada de valores
puts "Digite la precipitacion : "
precipitacion = gets.chomp.to_f

puts "Digite profundidad efectiva : "
profundidad_efectiva = gets.chomp.to_f

#rangos de precipitacion y profundidad
case 
when (0..9.83).include?(profundidad_efectiva)
    profundidad_no_apta=true
when (9.84..19.68).include?(profundidad_efectiva)
    profundidad_marginalmente_apta=true
when (19.69..39.37).include?(profundidad_efectiva)
    profundidad_moderada_apta=true
when profundidad_efectiva > 39.37
    profundidad_apta = true
end

case 
when precipitacion < 4.0 || precipitacion > 12.5
    precipitacion_no_apta = true
when (10.5..12.5).include?(precipitacion) || (4.0..4.99).include?(precipitacion)
    precipitacion_marginalmente_apta= true
when (8.5..10.4).include?(precipitacion)|| (5.0..5.9).include?(precipitacion)
    precipitacion_moderada_apta = true
when (6.0..8.4).include?(precipitacion)
    precipitacion_apta =true
end

#Misma clasificacion

puts "Sumamente apto" if precipitacion_apta && profundidad_apta 

puts "Moderadamente apto" if precipitacion_moderada_apta && profundidad_moderada_apta

puts "Marginalmente apto" if precipitacion_marginalmente_apta && profundidad_marginalmente_apta

puts "No apto" if precipitacion_no_apta && profundidad_no_apta


#Diferente clasificacion ( de las dos se toma la peor clasificacion )

# desde profundidad :

#profundidad apta :
puts "Moderadamente apto" if profundidad_apta && precipitacion_moderada_apta

puts "Marginalmente apto" if profundidad_apta && precipitacion_marginalmente_apta

puts "No apto" if profundidad_apta && precipitacion_no_apta

#profundidad moderada:
puts "Marginalmente apto" if profundidad_moderada_apta && precipitacion_marginalmente_apta
puts "No apto" if profundidad_moderada_apta && precipitacion_no_apta

#profundidad marginalmente apta :
puts "No apto" if profundidad_marginalmente_apta && precipitacion_no_apta



#Desde precipitacion : 

#Precipitacion apta :
puts "Moderadamente apto" if precipitacion_apta && profundidad_moderada_apta

puts "Marginalmente apto" if precipitacion_apta && profundidad_marginalmente_apta

puts "No apto" if precipitacion_apta && profundidad_no_apta

#Precipitacion moderada:
puts "Marginalmente apto" if precipitacion_moderada_apta && profundidad_marginalmente_apta
puts "No apto" if precipitacion_moderada_apta && profundidad_marginalmente_apta

#Precipitacion marginalmente apta :
puts "No apto" if precipitacion_marginalmente_apta && profundidad_no_apta