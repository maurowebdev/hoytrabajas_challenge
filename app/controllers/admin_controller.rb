# frozen_string_literal: true

class AdminController < ApplicationController
  before_action :ensure_logged_in

  def index; end
end
