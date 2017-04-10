class AdminController < ApplicationController
#load_and_authorize_resource
before_filter :authenticate_user!, :except=>[:home]

  def index
  end

	protected

end
