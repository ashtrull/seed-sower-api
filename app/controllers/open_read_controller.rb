# frozen_string_literal: true
# Inherit from this class to allow unauthenticate access to read actions

class OpenReadController < ProtectedController
  READ_ACTIONS = [:index, :show].freeze
  # you can read index and show without authentication
  skip_before_action :authenticate, only: READ_ACTIONS
  # skip authentication for READ_ACtions
  before_action :set_current_user, only: READ_ACTIONS
  # gives us access to the logged in user, everything except READ_ACTIONS
  # requires login
end
