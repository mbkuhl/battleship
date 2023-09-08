class Board
  attr_reader :coordinates

  def initialize
    @coordinates = {}
  end

  def cells
    pairs = []
    range_alphas = ["A", "B", "C", "D"]
    range_nums = ["1", "2", "3", "4"]

    range_nums.each do |num|
      range_alphas.each do |alpha|
        pairs << alpha + num
      end
    end
    pairs.sort.each do |pair|
      @coordinates[pair] = Cell.new(pair)
    end
    @coordinates
  end


end
