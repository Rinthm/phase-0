# Create a Playlist from Driver Code

# I worked on this challenge by myself.
# I spent 3 hours on this challenge.


# Pseudocode

# Create a class called 'Song'.
# Add an initialize function in 'Song' that accepts two arguments as input; a song and its artist.
# Create another class called 'Playlist'.
# Add an initialize function in 'Playlist' that accepts any amount of arguments as tracks to initially be in the playlist.
# Add an 'add' method to 'Playlist'.
# The 'add' method should accept any number of arguments as input as tracks to add to the playlist.
# 	-Make an empty array called 'tracks'.
# 	-IF the track is already in the playlist,
# 		-Print a message that lets the user know it's already in the playlist.
# 	-ELSE, 
# 		-Add the track to 'tracks'.
# Add a 'num_of_tracks' method to 'Playlist' that checks the length of the playlist.
# Add a 'play' method to 'Song' that plays a track and displays a visual.
# Add a 'remove' method to 'Playlist'.
# The 'remove' method should accept one argument as input.
# 	-IF the track is in the playlist,
# 		-Delete the track for the playlist.
# 	-ELSE,
# 		-Print a message that lets the user know the track is not in the playlist.
# Add an 'includes?' method to 'Playlist'.
# The 'includes?' method should accept one argument as input and check if the given track is in the playlist.
# Add a 'play_all' method to 'Playlist' that plays all the tracks in the playlist.
# Add a 'display' method to 'Playlist' that displays all the tracks in the playlist.


# Initial Solution

# class Song

# 	attr :song_name, :artist

# 	def initialize(song_name, artist)
# 		@song_name = song_name
# 		@artist = artist
# 	end

# 	def play
# 		puts "Now playing: #{song_name} by #{artist}..."
# 		sleep 1
# 		3.times do
# 			puts "  _________"
# 			sleep 0.1
# 			puts "  |       |"
# 			sleep 0.1
# 			puts "  |       |"
# 			sleep 0.1
# 			puts "  |       |"
# 			sleep 0.1
# 			puts "XX|     XX|"
# 			sleep 0.1
# 			puts "XX|     XX|"
# 			sleep 0.1
# 			puts
# 			puts "             _________"
# 			sleep 0.1
# 			puts "             |       |"
# 			sleep 0.1
# 			puts "             |       |"
# 			sleep 0.1
# 			puts "             |       |"
# 			sleep 0.1
# 			puts "             |XX     |XX"
# 			sleep 0.1
# 			puts "             |XX     |XX"
# 			sleep 0.1
# 			puts
# 		end
# 	end

# end

# class Playlist

# 	attr_reader :playlist

# 	def initialize(*tracks)
# 		@playlist = []
# 		tracks.each { |track|
# 			@playlist << track 
# 		}
# 	end

# 	def add(*new_songs)
# 		new_songs.each { |track|
# 			if @playlist.include?(track)
# 				puts "That track is already on your playlist!"
# 			else 
# 				@playlist << track
# 			end
# 		}
# 	end

# 	def num_of_tracks
# 		@playlist.length
# 	end

# 	def remove(*rmv_track)
# 		rmv_track.each { |track|
# 			if @playlist.include?(track)
# 				@playlist.delete(track)
# 			else
# 				puts "That track is not on your playlist!"
# 			end
# 		}
# 	end

# 	def includes?(*locate_track)
# 		locate_track.each { |track|
# 			if @playlist.include?(track)
# 				return true
# 			else
# 				return false
# 			end
# 		}
# 	end

# 	def play_all
# 		@playlist.each { |track|
# 			track.play
# 		}
# 	end

# 	def display
# 		@playlist.each { |track|
# 			puts song.track
# 		}
# 	end

# end


# Refactored Solution

class Song

	attr_reader :song_name, :artist

	def initialize(song_name, artist)
		@song_name = song_name
		@artist = artist
	end

	def play
		puts "Now playing: #{song_name} by #{artist}..."
		sleep 1
		3.times do
			puts "   _________"
			sleep 0.1
			puts "   |       |"
			sleep 0.1
			puts "   |       |"
			sleep 0.1
			puts "   |       |"
			sleep 0.1
			puts "XXX|    XXX|"
			sleep 0.1
			puts "XXX|    XXX|"
			sleep 0.1
			puts
			puts "             _________"
			sleep 0.1
			puts "             |       |"
			sleep 0.1
			puts "             |       |"
			sleep 0.1
			puts "             |       |"
			sleep 0.1
			puts "          XXX|    XXX|"
			sleep 0.1
			puts "          XXX|    XXX|"
			sleep 0.1
			puts
		end
	end

end

class Playlist

	attr_reader :playlist

	def initialize(*tracks)
		@playlist = []
		tracks.each { |track|
			@playlist << track 
		}
	end

	def add(*new_songs)
		new_songs.each { |track|
			if @playlist.include?(track)
				puts "#{track.song_name} by #{track.artist} is already on your playlist!"
			else 
				@playlist << track
				puts "You have added #{track.song_name} by #{track.artist} to your playlist."
			end
		}
	end

	def num_of_tracks
		@playlist.length
	end

	def remove(*rmv_track)
		rmv_track.each { |track|
			if @playlist.include?(track)
				@playlist.delete(track)
				puts "You have removed #{track.song_name} by #{track.artist} from your playlist."
			else
				puts "#{track.song_name} by #{track.artist} is not on your playlist!"
			end
		}
	end

	def includes?(*locate_track)
		locate_track.each { |track|
			if @playlist.include?(track)
				return true
			else
				return false
			end
		}
	end

	def play_all
		@playlist.each { |track|
			track.play
		}
	end

	def display
		puts "           YOUR PLAYLIST           "
		puts "___________________________________"
		puts "|      Song      |     Artist     |"
		puts "-----------------------------------"
		@playlist.each { |track|
			printf("%-17s", "#{track.song_name}")
			puts "| #{track.artist}"
		}
		puts "___________________________________"
	end

end


# DRIVER CODE AND TESTS GO BELOW THIS LINE

one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace")
going_under = Song.new("Going Under", "Evanescence")

my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)

lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")

my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play #How would you model a song getting "played" in Ruby? I used `puts` and `sleep`. You can model this however you want.
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display
my_playlist.add(lying_from_you)
awake = Song.new("Awake", "Tycho")
my_playlist.remove(awake)


# Reflection

=begin
What concepts did you review or learn in this challenge?

	I reviewed Ruby Classes; how to add functions, accessing instance variables 
	accross methods. I also reviewed how to access nested values. 

What is still confusing to you about Ruby?

	After much research and troubleshooting, I think I clarified Class properties
	pretty well, but I still don't have all the concpets on lock down.

What are you going to study to get more prepared for Phase 1?

	I'm definitely going to study Classes/Objects more; particularly accessing 
	nested data.
=end