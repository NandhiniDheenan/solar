class PvReportController < ApplicationController
  def pv_report_view
begin
client = Mysql2::Client.new(:host => "localhost", :username => "root", :password => "sql123", :database => "solar")
rescue Mysql2::Error => e
puts "error"
ensure
#disconnect from server
end

@pv_report_details = client.query("select * from pv_tbl ")

  end
end
