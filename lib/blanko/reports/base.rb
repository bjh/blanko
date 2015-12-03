module Blanko
  module Reports
    class Base
      attr_reader :orders, :emitter, :data, :header

      def initialize(orders, emitter)
        @orders = orders
        @emitter = emitter
        @data = []
        @header = nil
      end

      def generate
        raise 'override!!!'
      end

      def iterate(&block)
        @orders.each do |order|
          block.call(order)
        end
      end

      def append(row)
        @data << row
      end
    end
  end
end