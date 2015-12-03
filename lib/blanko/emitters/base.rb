module Blanko
  module Emitters
    class Base
      attr_accessor :input, :output, :has_header

      def initialize(input, has_header=false)
        @input = input
        @output = nil
        @has_header = has_header
      end

      def transform
        raise 'override this method!'
      end

      def header(data)
        raise 'override this method!'
      end
    end
  end
end