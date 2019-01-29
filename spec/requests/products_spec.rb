require 'rails_helper'

RSpec.describe 'Products API', type: :request do
  let!(:products) { create_list(:product, 10, producer: 'Corp') }

  # Test suite for GET /products
  describe 'GET /products' do
    before { get '/products?producer=Corp' }

    it 'returns products' do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # Test suite for GET /products?per_page=5
  describe 'GET /products?per_page=5' do
    before { get '/products?producer=Corp&per_page=5' }

    it 'returns 5 products' do
      expect(json.size).to eq(5)
    end
  end
end
