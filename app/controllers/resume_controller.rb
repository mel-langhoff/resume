class ResumeController < ApplicationController
  def index
    @jobs = Job.all
  end
end
