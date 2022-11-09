class ApplicationController < ActionController::API
  include ActionController::Cookies

  rescue_from ActiveRecord::RecordNotFound, with: :cannot_find 
  rescue_from ActiveRecord::RecordInvalid, with: :is_invalid

  private 

  def cannot_find(error)
    render json: { error: "#{error.model} not found" }, status: :not_found
  end

  def is_invalid(invalid)
    render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
  end

end
