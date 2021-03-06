require 'rainbow/refinement'
require 'matrix'
using Rainbow

class Node
      attr_accessor :x, :y, :value

      def initialize(x, y, value)
      @x = x
      @y = y
      @value = value
      end

end

def generate()

      cols = 10
      rows = 15
      table = Array.new(rows)
      items = [0,-1]


      table.each_with_index do |col, col_index|
            table[col_index] = Array.new(2)
            row_index = 0

            while row_index < cols
                  if (rand(3) != 1) then value = items[0] else value = items[1] end

                  table[col_index][row_index] = Node.new(col_index, row_index, value)
                  row_index += 1
            end
      end

      return table
end

def print_cell(cell)
      if cell.value == 0
            print "[ #{cell.value.to_s} ]".cyan
      else
            print "[#{cell.value.to_s} ]".red
      end
end

def display(table)
      # print table[0][0].value
      for row in table
            for cell in row
                  print_cell(cell)
                  if cell.y == 9
                        print "\n"
                  end
            end
      end
end

def main
      table = generate()
      # search(arr)
      display(table)

end

main
