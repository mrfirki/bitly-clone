class CreateUrls < ActiveRecord::Migration
	def change
		create_table :urls do |u|
			u.string :short_url
			u.string :long_url
			u.integer :counter, default: 0

			u.timestamps
		end	
	end
end
