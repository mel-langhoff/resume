class ResumeController < ApplicationController
  def index
    @jobs = Job.sort_jobs
  end
end
