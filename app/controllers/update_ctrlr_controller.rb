class UpdateCtrlrController < ApplicationController
  

def updatectrlr_index
begin
client = Mysql2::Client.new(:host => "localhost", :username => "root", :password => "sql123", :database => "solar")
rescue Mysql2::Error => e
puts "error"
ensure
#disconnect from server
end

@controller_id=params[:controller_id]
@update_details = client.query("select * from add_controller where controller_id='#{@controller_id}'")
@profileid=[];
@site_name=[];
@location=[];
@update_details.each do |tim|
@profileid.push(tim['profile_id'])
@site_name.push(tim['site_name'])
@location.push(tim['location'])

end

end

def update_controller_value

end

end
