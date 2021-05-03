# frozen_string_literal: true

# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'
require 'split/dashboard'

run Rack::URLMap.new \
  '/' => Rails.application,
  '/split' => Split::Dashboard.new
