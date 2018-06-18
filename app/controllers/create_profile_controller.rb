class CreateProfileController < ApplicationController
  

def create_profile_view
 render 'create_profile_view.html.erb'
  end

def createprofilepost
begin
client = Mysql2::Client.new(:host => "localhost", :username => "root", :password => "sql123", :database => "solar")
rescue Mysql2::Error => e
puts "error"
ensure
#disconnect from server
end

@profile_id=params[:profileid]

@create_profile_details = client.query("INSERT INTO profile_tbl (profile_tbl_id, profile_id) VALUES (null,'#{@profile_id}')")
redirect_to '/create_profile'  
  end
end
