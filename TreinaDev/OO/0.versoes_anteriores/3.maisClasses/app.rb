require "csv"
require_relative "./lib/category.rb"
require_relative "./lib/expense.rb"
require_relative "./lib/category_file.rb"
require_relative "./lib/file_processor.rb"
require "fileutils"

puts "Processador de Arquivos Nubank"

# puts __FILE__ # app.rb
# puts __dir__  # /home/rosanarezende/Cursos/CampusCode/TreinaDev/OO

# puts Dir.entries(__dir__)
# # data
# # .gitignore
# # .git
# # lib
# # 0.versoes_anteriores
# # categories
# # app.rb
# # ..

# Dir.each_child(__dir__).each do |child|
#   puts child
# end
# # data
# # .gitignore
# # .git
# # lib
# # 0.versoes_anteriores
# # categories
# # app.rb
# # # (não vem . nem ..)

# ======= ao invés de ler um arquivo de cada vez, vamos percorrer toda pasta data =======

DATA_DIR = "#{__dir__}/data"

Dir.each_child(DATA_DIR).each do |filename|
  # puts filename
  # # nubank-2020-07.csv
  # # nubank-2020-05.csv
  # # # ... (todos os arquivos na pasta)

  path = "./data/#{filename}"
  fp = FileProcessor.new(path)
  categories = fp.process()
  FileUtils.mv(path, "./data_processed")
end
