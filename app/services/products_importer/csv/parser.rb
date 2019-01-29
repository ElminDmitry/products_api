module ProductsImporter
  module Csv
    class Parser
      # require 'csv'

      attr_reader :data, :file

      def initialize(file)
        @file = file
        @data = []
      end

      def perform
        SmarterCSV.process(file, chunk_size: 1, key_mapping: attrs_map) do |row|
          Saver.create_or_update(row.first) unless row.empty?
        end
      end

      private

      def attrs_map
        { product_name: :name, "sku_(unique_id)": :sku, price_cents: :price }
      end
    end
  end
end
