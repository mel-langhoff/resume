class Project < ApplicationRecord
  validates_presence_of :title, :git_repo, :tech, :description

  enum type: { rails: 0, ruby: 1, css: 3, html: 4, other: 5 }
end