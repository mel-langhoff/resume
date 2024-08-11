class Job < ApplicationRecord
  validates_presence_of :title, :company, :start_date, :description

  def self.sort_jobs
    order(start_date: :desc).distinct
  end

  def formatted_start_date
    start_date.strftime('%B %Y')
  end

  def formatted_end_date
    end_date.strftime('%B %Y')
  end
end
