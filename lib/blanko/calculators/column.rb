module Blanko
  module Calculators
    class Column
      attr_reader :report

      def initialize(report)
        @report = report
      end

      def calculate(columns)
        totals = []

        @report.data.each do |row|
          columns.each do |column|
            value = Money.from_string(row[column])
            totals[column] ||= Money.from_string('0')
            totals[column] += value
          end
        end

        report.append(totals)
      end
    end
  end
end