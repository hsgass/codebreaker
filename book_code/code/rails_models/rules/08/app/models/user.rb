#---
# Excerpted from "The RSpec Book",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/achbd for more book information.
#---
class User < ActiveRecord::Base
  belongs_to :subscription
  has_many :received_messages, :class_name => Message.name, 
    :foreign_key => "recipient_id"
  has_many :sent_messages, :class_name => Message.name, 
    :foreign_key => "sender_id"
  
  def send_message(message_attrs)
    sent_messages.create! message_attrs
  end
  
end