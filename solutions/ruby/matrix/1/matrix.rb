=begin
Write your code for the 'Matrix' exercise in this file. Make the tests in
`matrix_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matrix` directory.
=end
=begin
Write your code for the 'Matrix' exercise in this file. Make the tests in
`matrix_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matrix` directory.
=end
class Matrix

  def initialize(matrix_string)
    @rows = matrix_string.lines.map do |line|
      line.split.map(&:to_i)
    end
  end

  def row(row_number)
    @rows[row_number - 1]
  end

  def column(column_number)
    @rows.transpose[column_number - 1]
  end
end