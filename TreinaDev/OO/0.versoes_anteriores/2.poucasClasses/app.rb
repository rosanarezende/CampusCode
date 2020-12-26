require "csv"
require_relative "./lib/category_file.rb"
require_relative "./lib/file_processor.rb"

puts "Processador de Arquivos Nubank"

# FileProcessor.new("./data/nubank-2020-01.csv").process()

fp1 = FileProcessor.new("./data/nubank-2020-01.csv")
# fp1.process #parenteses nesse caso é opcional

fp2 = FileProcessor.new("./data/nubank-2020-02.csv")
# # fp2.metodo_privado() # não é permitido
# # fp2.send(:metodo_privado) # mas isso sim... posso, mas não devo ;)

fp3 = FileProcessor.new("./data/nubank-2020-03.csv")
fp4 = FileProcessor.new("./data/nubank-2020-04.csv")
fp5 = FileProcessor.new("./data/nubank-2020-05.csv")
fp6 = FileProcessor.new("./data/nubank-2020-06.csv")
fp7 = FileProcessor.new("./data/nubank-2020-07.csv")
fp8 = FileProcessor.new("./data/nubank-2020-08.csv")
fp9 = FileProcessor.new("./data/nubank-2020-09.csv")
fp10 = FileProcessor.new("./data/nubank-2020-10.csv")
fp11 = FileProcessor.new("./data/nubank-2020-11.csv")

fp1.process
fp2.process
fp3.process
fp4.process
fp5.process
fp6.process
fp7.process
fp8.process
fp9.process
fp10.process
fp11.process
