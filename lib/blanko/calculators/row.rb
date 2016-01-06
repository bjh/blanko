module Blanko
  module Calculators
    class Row
      attr_reader :report

      def initialize(report)
        @report = report
      end

      def calculate(input_colums, output_column)
        @report.data.each do |row|
          total = Money.from_string('0')

          input_colums.each do |column|
            total += Money.from_string(row[column].to_s.gsub(/\$/, ''))
          end

          row[output_column] = total
        end
      end
    end
  end
end