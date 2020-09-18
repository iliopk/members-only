class ApplicationController < ActionController::Base
  private
	# Overwriting the sign_out redirect path method
  def after_sign_out_path_for(resource_or_scope)
    root_path
  end

  def after_sign_in_path_for(resource_or_scope)
    new_post_path
  end
end
