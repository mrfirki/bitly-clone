require 'byebug'

get '/' do
	@urls = Url.last(5)
	@urls.reverse!
	erb :"static/index"
end

post '/urls' do
  # create a new Url
	@url = Url.create(long_url: params[:long_url])
	# byebug
	redirect :"/"
	# erb :"static/index"
end


get '/:short_url' do
  # redirect to appropriate "long" URL
 	@url = Url.find_by(short_url: params[:short_url])
	@url.add_counter
	redirect @url.long_url
	# redirect "http://#{@url.long_url}"
end