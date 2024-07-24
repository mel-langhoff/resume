class ResumeController < ApplicationController
  def index
    @jobs = Job.all.sort_jobs.distinct
  end
end
