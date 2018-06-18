class EditProfileController < ApplicationController
 
 def edit_profile_view
begin
client = Mysql2::Client.new(:host => "localhost", :username => "root", :password => "sql123", :database => "solar")
rescue Mysql2::Error => e
puts "error"
ensure
#disconnect from server
end

@profile_id = client.query("select profile_id from profile_tbl")
@profileid=[];
@profile_id.each do |tim|
@profileid.push(tim['profile_id'])
end
puts @profile_id
render 'edit_profile_view.html.erb'
  end


end
