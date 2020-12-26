require "csv"
require_relative "./lib/category_file.rb"
require_relative "./lib/file_processor.rb"
require "fileutils"

puts "Processador de Arquivos Nubank"

DATA_DIR = "#{__dir__}/data"

Dir.each_child(DATA_DIR).each do |filename|
  path = "./data/#{filename}"
  fp = FileProcessor.new(path)
  fp.process()
  FileUtils.mv(path, "./data_processed")
end

CategoryFile.all.each do |cf|
  puts cf.category_name
  puts cf.content
end
