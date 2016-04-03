class HomeController < ApplicationController
  #before_filter :authenticate_user!

  def Index
  end

  def About
  end

  def Contact
    @contact_info = ContactInfo.new
  end

  def Send_Contact
    @contact_info = ContactInfo.new(contact_info_params)
    ContactMailer.contact_email(@contact_info).deliver
    flash[:info] = "Contact message sent..."
    redirect_to action: "Index"
  end

  def contact_info_params
    params.require(:contact_info).permit(:Name, :Email, :PhoneNumber, :Message)
  end
end
