class LibrarySearch::API
  def self.get_libraries(zip_code)
    data = RestClient.get(
    "http://www.worldcat.org/libraries/geosearch.json?countryCode=US&postalCode=#{zip_code}
    &wskey=Nbtgqc4PfUGgeYo1IwxXQ3zzkkNvlYRgCtVecBXcPCSTVErvxpCreKl5cLUzDB1gxIWpUPHRRajkOZ9W")

    @parsed_libraries = JSON.parse(data)
    @parsed_libraries.each do |library|
      LibrarySearch::Library.create_libraries(library)
    end
    

  end
end
