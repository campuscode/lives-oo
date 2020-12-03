require 'csv'
require_relative './lib/category'
require_relative './lib/expense'
require_relative './lib/category_file'
require_relative './lib/file_processor'
require 'fileutils'

DATA_DIR = "#{__dir__}/data"

puts 'Processador de Arquivos Nubank'

Dir.each_child(DATA_DIR).each do |filename|
  fp = FileProcessor.new("./data/#{filename}")
  fp.process()
  FileUtils.mv("./data/#{filename}", "./old/")
end


CategoryFile.all.each do |cf|
  c = Category.new(cf.category_name(), cf.content())
  puts c
  puts c.expenses_by_month
  puts "--------------------\n\n"
end








