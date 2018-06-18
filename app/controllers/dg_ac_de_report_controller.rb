class DgAcDeReportController < ApplicationController
  def DG_AC_DE_report_view
begin
client = Mysql2::Client.new(:host => "localhost", :username => "root", :password => "sql123", :database => "solar")
rescue Mysql2::Error => e
puts "error"
ensure
#disconnect from server
end

@dg_report_details = client.query("select * from DG_AC_DC_tbl ")
  end
end
