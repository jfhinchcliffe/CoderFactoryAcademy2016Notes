require 'base64'
class HomeController < ApplicationController
  def index
    if user_signed_in? 
      redirect_to new_profile_path if current_user.profile.nil?
      @profile = current_user.profile
    end
  end

  def check_coupon
    code = params[:code]
    @user_info, @code_info = code.split('@',2)
    #code_info = code.split('@',2)
    #flash[:message] = "User Info: #{user_info}, Code Info: #{code_info}"
    @code_enc = Base64.strict_encode64('123 726 abchsgetxf')
    @code_dec = Base64.decode64(@code_enc)
  end


  

end
