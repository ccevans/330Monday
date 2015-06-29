class ContactsController < ApplicationController
  respond_to :html, :json, :js

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      respond_to do |format|
        format.html {redirect_to 'create'}
        format.json
        format.js
      end
      flash.now[:error] = nil
      flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
    else
      flash.now[:error] = 'Cannot send message.'
      redirect_to 'new'
    end
  end
end