class VansController < ApplicationController
  skip_before_action :authenticate_user!, only: [:search]

  def new
  end

  def create
  end

  def show
  end

  def search
  end
end
