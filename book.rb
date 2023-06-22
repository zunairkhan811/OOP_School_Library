class Book
  attr_accessor :title, :rentals

  def initialize(title, _author)
    @title = title
    @rentals = []
  end

  def add_rental(rental)
    @rentals << rental
  end
end
