class ResumeController < ApplicationController
  def index
    @jobs = Job.all.sort_jobs.uniq
  end
end
