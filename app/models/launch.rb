# frozen_string_literal: true

class Launch
  include Her::Model

  def self.upcoming
    @upcoming ||= get_raw(:upcoming) do |parsed_data, _response|
      parsed_data[:data].sort_by { |hash| hash[:date_local] }
    end
  end

  def self.past
    @past ||= get_raw(:past) do |parsed_data, _response|
      parsed_data[:data].sort_by { |hash| hash[:date_local] }.reverse
    end
  end

  def self.next
    @next ||= get_raw(:next)
  end

  def self.latest
    @latest ||= get_raw(:latest)
  end
end
