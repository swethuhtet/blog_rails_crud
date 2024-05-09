class ErrorController < ApplicationController
  def not_found
    render 'error/not_found', status: :not_found
    # redirect_to root_path,alert: "Page not found"
  end
end
