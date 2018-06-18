class GridReportController < ApplicationController
  def grid_report_view
begin
client = Mysql2::Client.new(:host => "localhost", :username => "root", :password => "sql123", :database => "solar")
rescue Mysql2::Error => e
puts "error"
ensure
#disconnect from server
end

@grid_report_details = client.query("select * from grid_tbl ")
  end
end
