require 'byebug'

get '/' do
	@urls = Url.last(5)
	@urls.reverse!
	erb :"static/index"
end

post '/urls' do
  # create a new Url
  # new_url = Url.new(long_url: params[:long_url])
  # if new_url.valid?
  #   new_url.save
  #   return new_url.to_json
  # else
  # 	json_hash = {}
  #   json_hash[:error_msgs] = new_url.errors.messages[:long_url][0]

  #   if json_hash[:error_msgs] == "has already been taken"
  #   	find_url = Url.find_by(long_url: params[:long_url])
  #   	json_hash[:short_url] = find_url.short_url
  #   	json_hash[:long_url] = find_url.long_url
  #   end

  #   return json_hash.to_json
  # end
	@url = Url.create(long_url: params[:long_url])
	redirect :"/"
	erb :"static/index"
end


get '/:short_url' do
  # redirect to appropriate "long" URL
 	@url = Url.find_by(short_url: params[:short_url])
	@url.add_counter
	redirect @url.long_url
	# redirect "http://#{@url.long_url}"
end