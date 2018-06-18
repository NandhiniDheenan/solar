class InverterReportController < ApplicationController
  def inverter_report_view
begin
client = Mysql2::Client.new(:host => "localhost", :username => "root", :password => "sql123", :database => "solar")
rescue Mysql2::Error => e
puts "error"
ensure
#disconnect from server
end

@inverter_report_details = client.query("select * from inverter_tbl ")
  end
end
