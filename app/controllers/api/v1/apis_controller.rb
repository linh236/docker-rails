module Api::V1
  class ApisController < ApplicationController
    skip_before_action :authenticate_user!
    skip_before_action :verify_authenticity_token
  end
end
