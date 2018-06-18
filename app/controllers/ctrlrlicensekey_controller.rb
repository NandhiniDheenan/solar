class CtrlrlicensekeyController < ApplicationController
  def ctrlrlicensekey_index

begin
client = Mysql2::Client.new(:host => "localhost", :username => "root", :password => "sql123", :database => "solar")
rescue Mysql2::Error => e
puts "error"
ensure
#disconnect from server
end

@license_key_details = client.query("SELECT  * FROM authenticate_controller ")

  end
end
