class LibrarySearch::API
  def self.get_libraries(zip_code)
    data = RestClient.get(
    "http://www.worldcat.org/libraries/geosearch.xml?countryCode=US&postalCode=#{zip_code}
    &wskey=Nbtgqc4PfUGgeYo1IwxXQ3zzkkNvlYRgCtVecBXcPCSTVErvxpCreKl5cLUzDB1gxIWpUPHRRajkOZ9W")
    binding.pry

    @parsed_data = JSON.parse(data)



  end
end
