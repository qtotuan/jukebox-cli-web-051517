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
  puts """I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"""
end

def list(song_list)
  song_list.each_with_index do |e, i|
    puts "#{i + 1}. #{e}"
  end
end

def play(song_list)
  puts "Please enter a song name or number:"
  answer = gets.chomp
  numbers = (1..9).to_a
  if numbers.include?(answer.to_i)
    puts "Playing #{song_list[answer.to_i - 1]}"
  elsif song_list.include?(answer)
    puts "Playing #{answer}"
  else
    puts "Invalid input, please try again"

  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(song_list)
  help
  answer = ""
  while true do
    puts "Please enter a command:"
    answer = gets.downcase.chomp
    case answer
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      list(songs)
      play(songs)
    when "exit"
      exit_jukebox
      break
    else
      help
    end
  end
end
