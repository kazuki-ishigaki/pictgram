class ApplicationController < ActionController::Base
  protect_form_forgery with: :exception

  add_flash_types :succes, :info, :warning, :danger
end
