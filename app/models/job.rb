class Job < ApplicationRecord
  validates_presence_of :title, :company, :location, :start_date, :description

  def self.sort_jobs
    order(start_date: :desc)
  end
end
