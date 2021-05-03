class LaunchPresenter
  attr_reader :launch

  def initialize(launch)
    @launch = launch
  end

  def past_date
    past.map { |launch| launch[:date_local].to_date.strftime("%d/%m/%Y")  }
  end

  def past_detail
    past.map { |launch| launch[:details].blank? ? "Until now, Spacex hasn't provided any description." : launch[:details] }
  end

  def past_article
    past.map { |launch| launch[:links][:article] }
  end

  def upcoming_date
    upcoming.map { |launch| launch[:date_local].to_date.strftime("%d/%m/%Y")  }
  end

  def upcoming_detail
    upcoming.map { |launch| launch[:details].blank? ? "Until now, Spacex hasn't provided any description." : launch[:details] }
  end

  def upcoming_article
    upcoming.map { |launch| launch[:links][:article] }
  end

  def next_date
    next_launch[:parsed_data][:data][:date_local].to_date.strftime("%d/%m/%Y")
  end

  def next_detail
    next_launch[:parsed_data][:data][:details].blank? ? "Until now, Spacex hasn't provided any description." : next_launch[:parsed_data][:data][:details]
  end

  def next_article
    next_launch[:parsed_data][:data][:links][:article]
  end

  def next_next
    next_launch[:parsed_data][:data][:links][:webcast]
  end

  def latest_date
    latest[:parsed_data][:data][:date_local].to_date.strftime("%d/%m/%Y")
  end

  def latest_detail
    latest[:parsed_data][:data][:details].blank? ? "Until now, Spacex hasn't provided any description." : latest[:parsed_data][:data][:details]
  end

  def latest_article
    latest[:parsed_data][:data][:links][:article]
  end

  def upcoming
    launch.upcoming
  end

  def past
    launch.past
  end

  def latest
    launch.latest
  end

  def next_launch
    launch.next
  end
end
