class LibrarySearch::CLI
  def call
    puts "Welcome please enter a zip code to find libraries near you."
    zip = gets.chomp
    LibrarySearch::API.get_libraries(zip)
  end
end
