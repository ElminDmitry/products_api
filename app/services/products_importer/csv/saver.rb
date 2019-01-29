module ProductsImporter
  module Csv
    class Saver
      def self.create_or_update(data)
        p = Product.find_or_create_by(sku: data[:sku])
        p.update(data)
      end
    end
  end
end
