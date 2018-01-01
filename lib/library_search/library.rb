class LibrarySearch::Library
  @@all = []
  attr_accessor :name,:state,:street,:city,:zip,:country,:phone

  # # def self.create_libraries(library)
  # #   # binding.pry
  # #   self.new(
  # #   library["name"],
  # #   library["address"]["stateName"],
  # #   library["address"]["street1"],
  # #   library["address"]["city"],
  # #   library["address"]["postalCode"],
  # #   library["address"]["countryName"],
  # #   library["phoneNumber"]
  # #
  # #   )
  # end
  def initialize(name=nil,state=nil,street=nil,city=nil,zip=nil,country=nil,phone=nil)
    @name = name
    @state = state
    @street = street
    @city = city
    @zip = zip
    @country = country
    @phone = phone
    @@all << self
  end

  def self.all
    @@all
  end
  def self.find(id)
    self.all[id-1]
  end
  def self.find_by_name(name)
    self.all.detect{|library|
      library.name.downcase.strip == name.downcase.strip
    }
  end
  def info
    puts "#{@street}"
    puts "#{@city}"
    puts "#{@state}"
    puts "#{@zip}"
    puts "#{@country}"
    puts "#{@phone}"
  end

end
