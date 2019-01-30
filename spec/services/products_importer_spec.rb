require 'rails_helper'

CSV_PATH = Rails.root.join('spec', 'data', 'MOCK_DATA.csv').freeze

RSpec.describe ProductsImporter do
  describe 'Products importing' do

    it 'should parse and store products' do
      expect { ProductsImporter.import(CSV_PATH) }.to change { Product.count }.by(9)
    end
  end
end
