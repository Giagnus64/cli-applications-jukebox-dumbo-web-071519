# Add your code here
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]
def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(array)
  array.each_with_index { |song, index|
    puts "#{index + 1}. #{song}"
  }
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  if user_input == "song"
    puts "Playing#{user_input}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
 puts "Goodbye"
end

def run(songs)
  help
  until(user_command == "exit")
    puts "Please enter a command:"
    user_command = gets.chomp
    if user_command == play
      play(songs)
    elsif user_command == help
      help
    elsif user_command == list
      list(songs)
    end
  end
end
