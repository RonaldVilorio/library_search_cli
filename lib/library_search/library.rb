class LibrarySearch::Library
  @@all = []

  def self.create_libraries(library)
    binding.pry
    self.new(
    library["name"],
    library["address"]["stateName"],
    library["address"]["street1"],
    library["address"]["city"],
    library["address"]["postalCode"],
    library["address"]["countryName"],
    library["phoneNumber"]

    )
  end
  def initialize(name=nil,state=nil,street=nil,city=nil,zip=nil,country=nil,phone=nil)
    @name = name
    @state = state
    @street = street
    @city = city
    @zip = zip
    @country = country
    @phone = phone
    # binding.pry
    @@all << self
  end
end
