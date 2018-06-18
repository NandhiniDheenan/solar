class ProfileEditSubFormController < ApplicationController
  def profile_edit_sub_form_view
@profileid=params[:profileid]
session[:passed_variable] = @profileid
 render 'profile_edit_sub_form_view.html'
  end

def editprofilesubformpost
begin
client = Mysql2::Client.new(:host => "localhost", :username => "root", :password => "sql123", :database => "solar")
rescue Mysql2::Error => e
puts "error"
ensure
#disconnect from server
end

@profileid=session[:passed_variable] 
@get_profileid = @profileid
@updated_date= Time.now.strftime("%Y/%m/%d")
@updated_time=Time.now.strftime("%H:%M:%S")
puts @updated_date
puts @updated_time
puts @get_profileid

salveid = params["slave_id"]
functioncode = params["functioncode"]
startingaddr = params["startingaddr"]
length = params["length"]

@noEmptysalveid = salveid.reject { |c| c.empty? }
@noEmptyfunctioncode = functioncode.reject {|c| c.empty? }
@noEmptystartingaddress = startingaddr.reject {|c| c.empty? }
@noEmptylength =length.reject {|c| c.empty? }

@poll_id=0

@noEmptysalveid.zip @noEmptyfunctioncode.zip @noEmptystartingaddress.zip(@noEmptylength).each do |slaveid, functioncode,startingaddr,length|
@poll_id =@poll_id+1
@edit_slave_id=slaveid
@edit_function_code=functioncode
@edit_startingaddr=startingaddr
@edit_length=length
puts @edit_function_code
#@edit_subform_details = client.query("INSERT INTO profile_slave_detail_tbl (profile_slave_detail_id, updated_date, updated_time, profile_id, slave_id, poll_id, function_code, starting_address, length) VALUES (null,'#{@updated_date}','#{@updated_time}','#{@get_profileid}','#{@edit_slave_id}','#{@poll_id}','#{@edit_function_code}','#{@edit_startingaddr}','#{@edit_length}')")
end



redirect_to '/edit_profile'
end
end
