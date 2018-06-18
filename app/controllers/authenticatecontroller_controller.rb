class AuthenticatecontrollerController < ApplicationController
  

def authenticatectrlr_index
begin
client = Mysql2::Client.new(:host => "localhost", :username => "root", :password => "sql123", :database => "solar")
rescue Mysql2::Error => e
puts "error"
ensure
#disconnect from server
end


@controller_id = client.query("select controller_id from add_controller")
@ctrlrid=[];
@controller_id.each do |tim|
@ctrlrid.push(tim['controller_id'])
end
  end

def authenticatectrlridpost

begin
client = Mysql2::Client.new(:host => "localhost", :username => "root", :password => "sql123", :database => "solar")
rescue Mysql2::Error => e
puts "error"
ensure
#disconnect from server
end

@controller_id=params[:ctrlrid]
@authorization_key=params[:authorizationcode]

@authenticatectrlrid_details = client.query("INSERT INTO authenticate_controller (authenticate_id, controller_id, authorization_key) VALUES (null,'#{@controller_id}','#{@authorization_key}')")
redirect_to '/authenticatecontroller'

end
end
