class WelcomeController < ApplicationController
  layout 'welcome'
  
  def index
    render layout: 'welcome'
  end

  def about
  end
end
