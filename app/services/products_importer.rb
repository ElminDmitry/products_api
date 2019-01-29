module ProductsImporter
  CSV_PATH = Rails.root.join('db', 'data', 'data.csv').freeze

  module_function

  def import(file_to_import = CSV_PATH)
    Csv::Parser.new(file_to_import).perform
  end

end