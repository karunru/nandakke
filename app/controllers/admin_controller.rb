class AdminController < ApplicationController
#load_and_authorize_resource
before_filter :authenticate_user!, :except=>[:home]
before_filter :authenticate_user!, :redirect_unless_admin
  def index
  end

	protected

end
