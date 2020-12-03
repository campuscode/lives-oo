class FileProcessor
  # atributos
  attr_reader :file_path

  # construtor
  def initialize(file_path)
    @file_path = file_path
  end

  # métodos públicos
  # método de instância
  def process()
    file = File.read(file_path) # lê todo conteúdo do arquivo em uma string
    csv = CSV.parse(file, headers: true) 
    csv.each do |row|
      expense = row.to_h
      # { "category" => "serviços", "titulo" => "Netflix"}
      category = fetch_category(expense)
      CategoryFile.new(category).add_line(row)
    end
  end

  private

  def fetch_category(expense)
    # Guard Clause
    return expense["category"] if expense["category"]
    #condicao ? caso_true : caso_false # operador ternários
    expense["amount"].to_f.positive? ? 'juros_multa' : 'pagamentos'
  end

end