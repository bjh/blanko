module Blanko
  module Reports
    class Base
      attr_reader :records, :emitter, :data, :header

      def initialize(records, emitter)
        @records = records
        @emitter = emitter
        @data = []
        @header = nil
      end

      def generate
        raise 'override!!!'
      end

      def iterate(&block)
        @records.each do |order|
          block.call(order)
        end
      end

      def append(row)
        @data << row
      end
    end
  end
end