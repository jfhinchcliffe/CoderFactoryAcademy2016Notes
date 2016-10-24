class HomeController < ApplicationController
  def index
    @contactdetails = ContactDetail.last
  end
end
