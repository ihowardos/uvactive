module Admins
  class BaseController < ApplicationController
    before_action :authenticate_admin!

    layout "admin"
    
    expose_decorated :admin
  end
end
