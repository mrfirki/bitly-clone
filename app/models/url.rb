

class Url < ActiveRecord::Base
	# This is Sinatra! Remember to create a migration!
	before_create :shorten 
	validates :long_url, :presence => true , :format => {:with => /((?:https?\:\/\/|www\.)(?:[-a-z0-9]+\.)*[-a-z0-9]+.*)/i }#URI::regexp(["http", "https"]) #%w(http https)

	def shorten
		 self.short_url = SecureRandom.hex(3)
	end	

	def add_counter
		self.counter += 1
		self.save
	end
end

