class SolarInvGraphController < ApplicationController

 def solar_inv_graph_view
client = Mysql2::Client.new(:host => "localhost", :username => "root", :password => "sql123", :database => "solar")


@grid_energy =client.query("select DATE_FORMAT(updated_time,'%H:%i:%s') as updated_time,DATE_FORMAT(updated_date, '%Y-%m-%d') as updated_date, total_energy_export,total_energy_import from grid_tbl ")  

@DG_AC_DC_tbl = client.query("select todays_ac_load_energy,  todays_DG_output_enery_produced from DG_AC_DC_tbl ")  
@pv_tbl_details =client.query("select todays_kwh from pv_tbl ")  

@timearray=[];
@total_energy_export=[];
@total_energy_import=[];
@datearray=[];
@todays_ac_load_energy=[];
@todays_DG_output_enery_produced=[];
@todays_kwh=[];

@grid_energy.each do |tim|
@total_energy_export.push(tim['total_energy_export'])
@total_energy_import.push(tim['total_energy_import'])
@timearray.push(tim['updated_time'])
@datearray.push(tim['updated_date'])
end

@DG_AC_DC_tbl.each do |tim|
@todays_ac_load_energy.push(tim['todays_ac_load_energy'])
@todays_DG_output_enery_produced.push(tim['todays_DG_output_enery_produced'])
end
puts @todays_ac_load_energy
@pv_tbl_details.each do |tim|
@todays_kwh.push(tim['todays_kwh'])
end


  end
def search_solar_inv

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
