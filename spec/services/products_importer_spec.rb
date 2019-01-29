require 'rails_helper'

RSpec.describe ProductsImporter do
  describe 'Products importing' do

    it 'should parse and store products' do
      expect { ProductsImporter.import }.to change { Product.count }
    end
  end
end
