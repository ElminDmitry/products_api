class ProductSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :photo_url, :barcode, :price, :sku, :producer
end
