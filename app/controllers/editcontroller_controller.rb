class EditcontrollerController < ApplicationController
  def editctrlr_index
begin
client = Mysql2::Client.new(:host => "localhost", :username => "root", :password => "sql123", :database => "solar")
rescue Mysql2::Error => e
puts "error"
ensure
#disconnect from server
end

@edit_ctrlr_details = client.query("SELECT  * FROM add_controller ")

  end
end
