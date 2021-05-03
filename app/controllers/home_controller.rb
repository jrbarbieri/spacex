# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @launch = LaunchPresenter.new(Launch)
  end
end
