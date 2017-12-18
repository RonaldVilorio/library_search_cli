class LibrarySearch::Library
  @@all = []

  def self.create_libraries(library)
    self.new(
    library["name"],
    library["address"],
    library["phoneNumber"],
    library["emails"],
    )
  end
  def initialize(name=nil,emails=nil,phoneNumber=nil,address=nil)

    @email = email
    @phoneNumber = phoneNumber
    @address = address
    @name = name
    binding.pry
    @@all << self
  end
end
