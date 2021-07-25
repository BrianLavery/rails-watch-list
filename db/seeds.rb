# Movie seed

# Could also use this API: https://developers.themoviedb.org/3/movies/get-top-rated-moviesURI.open(url).read
# url = 'https://api.themoviedb.org/3/movie/top_rated?api_key=<<api_key>>&language=en-US&page=1'

puts "destroying lists"

List.destroy_all

puts "destroyed lists"

# puts "Destorying all records in Movie Database then seeding"

# Movie.destroy_all

# url = 'http://tmdb.lewagon.com/movie/top_rated'
# response = URI.open(url).read
# data = JSON.parse(response)

# data["results"].each do |result|
#   Movie.create(
#     title: result["title"],
#     overview: result["overview"],
#     poster_url: "https://image.tmdb.org/t/p/w500#{result["poster_path"]}",
#     rating: result["vote_average"]
#     )
# end

# Movie.create(title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9)
# Movie.create(title: "The Shawshank Redemption", overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8.7)
# Movie.create(title: "Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: 7.9)
# Movie.create(title: "Ocean's Eight", overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7.0)

# puts "Seeded movies"
