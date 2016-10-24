class AdminController < ApplicationController
  def index
    @contact_detail = ContactDetail.last
  end
end
