#---
# Excerpted from "The RSpec Book",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/achbd for more book information.
#---
class MessagesController < ApplicationController
  def create
    @message = Message.new(params[:message])
    if @message.save
      flash[:notice] = "The message was saved successfully."
      redirect_to :action => "index"
    else
      render :action => "new"
    end
  end
end
