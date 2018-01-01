class LibrarySearch::LibraryImporter
  def self.import(library)
    # binding.pry
    LibrarySearch::Library.new(
    library["name"],
    library["address"]["stateName"],
    library["address"]["street1"],
    library["address"]["city"],
    library["address"]["postalCode"],
    library["address"]["countryName"],
    library["phoneNumber"]

    )
  end
end
