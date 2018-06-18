class AddcontrollerController < ApplicationController


  def addcontroller_index
render 'addcontroller_index.html.erb'
  end

def addcontroller
begin
client = Mysql2::Client.new(:host => "localhost", :username => "root", :password => "sql123", :database => "solar")
rescue Mysql2::Error => e
puts "error"
ensure
#disconnect from server
end

@controller_id=params[:ctrlrid]
@profile_id=params[:profileid]
@site_name=params[:sitename]
@location=params[:location]

@controller_details = client.query("INSERT INTO add_controller (add_ctrlrid, controller_id, profile_id, site_name, location) VALUES (null,'#{@controller_id}','#{@profile_id}','#{@site_name}','#{@location}')")
redirect_to '/addcontroller'
  end

end
