#---
# Excerpted from "The RSpec Book",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/achbd for more book information.
#---
require 'spec_helper'

describe "messages/show.html.erb" do
  it "displays the text attribute of the message" do
    assign(:message, double("Message", :text => "Hello world!"))
    render
    rendered.should contain("Hello world!")
  end
end
