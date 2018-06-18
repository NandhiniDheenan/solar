class InverterController < ApplicationController
  def invert_index
@url= request.url
puts @url
@url_split=@url.split('@')
puts @url_split
  end
end
