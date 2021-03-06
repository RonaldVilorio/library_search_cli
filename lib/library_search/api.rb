class LibrarySearch::API
  def self.get_libraries(zip_code)
    data = RestClient.get(
    "http://www.worldcat.org/libraries/geosearch.json?countryCode=US&postalCode=#{zip_code}
    &wskey=Nbtgqc4PfUGgeYo1IwxXQ3zzkkNvlYRgCtVecBXcPCSTVErvxpCreKl5cLUzDB1gxIWpUPHRRajkOZ9W")

    @parsed_libraries = JSON.parse(data)
    @parsed_libraries["institutions"].each do |library|
      LibrarySearch::LibraryImporter.import(library)
    end


  end
end
