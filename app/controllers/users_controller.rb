class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create, :update, :create_relationship, :update_relationship]
end
