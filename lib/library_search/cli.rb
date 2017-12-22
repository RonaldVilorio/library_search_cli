class LibrarySearch::CLI
  def call
    start
  end

  def list
    puts "Welcome, please enter a zip code to find libraries near you."
    zip = gets.chomp
    LibrarySearch::API.get_libraries(zip)
    puts ""
    puts "*** Libraries near you ***"
    puts ""
    LibrarySearch::Library.all.each.with_index(1) do |library,i|
      puts "#{i}. #{library.name}"
    end
    puts ""

  end
  def print_info(library)
    puts ""
    puts "--- #{library.name} ---"

    puts ""
    puts library.info
    puts ""
  end

  def start
    list
    user_input = nil
    while user_input != "exit"
      puts ""
      puts "Which library would you like more information on, by name or number?"
      puts ""
      puts "Enter 'list' to choose a different zip code and list libraries."
      puts "Enter 'exit' to leave the program."
      puts ""
      user_input = gets.chomp
      if user_input == "list"
        list
      elsif user_input.to_i == 0
        if library = LibrarySearch::Library.find_by_name(user_input)
          print_info(library)
        end
      elsif user_input.to_i > 0
        if library = LibrarySearch::Library.find(user_input.to_i)
          print_info(library)
        end
      end
    end
  end
end
