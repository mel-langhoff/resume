class Project < ApplicationRecord
  validates_presence_of :title, :git_repo, :tech, :description, :type
end