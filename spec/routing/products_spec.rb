require 'rails_helper'

describe 'Products Controller' do
  it 'should have index route enabled' do
    expect(get: '/products').to route_to('products#index', format: :json)
  end
end