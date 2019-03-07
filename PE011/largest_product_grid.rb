class LargestProductGrid
  attr_reader :matrix

  # LargestProductGrid constructor
  #
  # @param [Array] mat two dimensional Array holding grid values
  def initialize(mat)
    @matrix = mat
  end


  def find_largest_product(numbers_in_product)

    max_product=0

    (0...matrix.length).each do |row|
      (0...matrix[0].length).each do |column|
        
        if row <= matrix.length - numbers_in_product
        temp_product = check_horizontally(column, row, numbers_in_product)
        max_product = [max_product, temp_product].max
        end 

        if column <= matrix[0].length - numbers_in_product
            temp_product = check_vertically(column, row, numbers_in_product)
            max_product = [max_product, temp_product].max
        end 

        if row <= matrix.length - numbers_in_product && column >= numbers_in_product
            temp_product = check_diagonally_left(column, row, numbers_in_product)
            max_product = [max_product, temp_product].max
        end

        if row <= matrix.length - numbers_in_product && column <= matrix[0].length - numbers_in_product
            temp_product = check_diagonally_right(column, row, numbers_in_product)
            max_product = [max_product, temp_product].max
        end

      end
    end
    max_product
  end

  private 

  # Calculates the product of 4 numbers from the grid along the horizontal line
  # 
  # @param [Integer] x - vertical position of first number
  # @param [Integer] y - horizontal position of first number
  # @param [Integer] numbers_in_product - number of multiplied numbers
  def check_horizontally(x, y, numbers_in_product)
    (0...numbers_in_product).inject(1) do |product, i|
      product * matrix[y + i][x]
    end
  end

  # Calculates the product of 4 numbers from the grid along the vertical line
  # 
  # @param [Integer] x - vertical position of first number
  # @param [Integer] y - horizontal position of first number
  # @param [Integer] numbers_in_product - number of multiplied numbers
  def check_vertically(x, y, numbers_in_product)
    (0...numbers_in_product).inject(1) do |product, i|
      product * matrix[y][x+i]
    end
  end

  # Calculates the product of 4 numbers from the grid along the diagonal line
  #   which is going left-down
  # @param [Integer] x - vertical position of first number
  # @param [Integer] y - horizontal position of first number
  # @param [Integer] numbers_in_product - number of multiplied numbers
  def check_diagonally_left(x, y, numbers_in_product)
    (0...numbers_in_product).inject(1) do |product, i|
      product * matrix[y+i][x-i]
    end
  end

  # Calculates the product of 4 numbers from the grid along the diagonal line
  #   which is going right-down
  # @param [Integer] x - vertical position of first number
  # @param [Integer] y - horizontal position of first number
  # @param [Integer] numbers_in_product - number of multiplied numbers
  def check_diagonally_right(x, y, numbers_in_product)
    (0...numbers_in_product).inject(1) do |product, i|
      product * matrix[y+i][x+i]
    end
  end

end



