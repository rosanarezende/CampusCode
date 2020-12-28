# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Book.create(title: 'Orgulho e Preconceito',
  author: 'Jane Austen',
  publication_year: 1813,
  abstract: 'Um clássico da literatura inglesa centrato no '\
            'relacionamento turbulento entre Elizabeth '\
            'Bennet, a filha de um cavalheiro e '\
            'Fitzwilliam Darcy, um aristocrata.',
  genre: 'Romance')
