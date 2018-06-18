class SolarEnergyGraphController < ApplicationController
 

 def solar_energy_graph_view

client = Mysql2::Client.new(:host => "localhost", :username => "root", :password => "sql123", :database => "solar")


@grid_energy =client.query("select DATE_FORMAT(updated_time,'%H:%i:%s') as updated_time,DATE_FORMAT(updated_date, '%Y-%m-%d') as updated_date, total_energy_export,total_energy_import from grid_tbl ")  

@timearray=[];
@total_energy_export=[];
@total_energy_import=[];
@datearray=[];


@grid_energy.each do |tim|
@total_energy_export.push(tim['total_energy_export'])
@total_energy_import.push(tim['total_energy_import'])
@timearray.push(tim['updated_time'])
@datearray.push(tim['updated_date'])
end
puts @total_energy_export
puts @datearray
  end


def search_grid_energy

client = Mysql2::Client.new(:host => "localhost", :username => "root", :password => "sql123", :database => "solar")

@fromdate = params[:fromdate]
@todate =params[:todate]
@controllerid =params[:controllerid]


@grid_energy =client.query("select DATE_FORMAT(updated_time,'%H:%i:%s') as updated_time,DATE_FORMAT(updated_date, '%Y-%m-%d') as updated_date, total_energy_export,total_energy_import from grid_tbl where ctrlrid = '#{@controllerid}' AND updated_date >= '#{@fromdate}' AND updated_date <='#{@todate}' ")  


@timearray=[];
@total_energy_export=[];
@total_energy_import=[];
@datearray=[];

@grid_energy.each do |tim|
@total_energy_export.push(tim['total_energy_export'])
@total_energy_import.push(tim['total_energy_import'])
@timearray.push(tim['updated_time'])
@datearray.push(tim['updated_date'])
end


render 'solar_energy_graph_view'
end

end
