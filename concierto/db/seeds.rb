# encoding: UTF-8
# IMPORTANTE: PRIMERA LINEA PARA PROBLEMAS CON TILDE U OTROS CARÁCTERES
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "Inicio de Carga Inicial de datos"

tipoper = TipoPersona.create([ {nombre: 'Alumno'} , { nombre: 'Usuario' } ])
sexo = Sexo.create([ {nombre: 'Masculino'} , { nombre: 'Femenino' } ])
tipodoc = TipoDocumento.create([ {nombre: 'DNI'} , { nombre: 'TIU' } ])
distrito = Distrito.create([ {nombre: 'Cercado de Lima'}, {nombre: 'Ate'}, {nombre: 'Barranco'}, {nombre: 'Breña'}, {nombre: 'Comas'}, {nombre: 'Chorrillos'}, {nombre: 'El Agustino'}, {nombre: 'Jesús María'}, {nombre: 'La Molina'}, {nombre: 'La  Victoria'}, {nombre: 'Lince'}, {nombre: 'Magdalena del Mar'}, {nombre: 'Miraflores'}, {nombre: 'Pueblo Libre'}, {nombre: 'Puente Piedra'}, {nombre: 'Rimac'}, {nombre: 'San Isidro'}, {nombre: 'Independencia'}, {nombre: 'San Juan de Miraflores'}, {nombre: 'San Luis'}, {nombre: 'San Martin de Porres'}, {nombre: 'San Miguel'}, {nombre: 'Santiago de Surco'}, {nombre: 'Surquillo'}, {nombre: 'Villa María del Triunfo'}, {nombre: 'San Juan de Lurigancho'}, {nombre: 'Santa Rosa'}, {nombre: 'Los Olivos'}, {nombre: 'San Borja'}, {nombre: 'Villa El Savador'}, {nombre: 'Santa Anita'} ])
estiloMusic = EstiloMusica.create([ { nombre: 'Rock and Roll'}, { nombre: 'Pop'}, { nombre: 'Metal'}, { nombre: 'Rap y Hip Hop'}, { nombre: 'Electronic Music'}, { nombre: 'Reggae'}, { nombre: 'Blues'}, { nombre: 'Country'}, { nombre: 'Reggaeton'}, { nombre: 'Cumbia'} ])

puts "Fin de Proceso"