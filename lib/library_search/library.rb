class LibrarySearch::Library
  @@all = []

  def self.create_libraries(library)
    self.new(
    library["name"],
    library["address"]["stateName"],
    )
  end
  def initialize(name=nil,state=nil)
    @name = name
    @state = state
    binding.pry
    @@all << self
  end
end
