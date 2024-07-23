require 'rails_helper'

RSpec.describe 'Root Page', type: :feature do
  describe 'when a user visits the root path /' do
    describe 'header' do
      it 'has links to about, resume, projects, contact, & vinyl collection' do
        visit root_path

        expect(page).to have_link("About")
        expect(page).to have_link("Resume")
        expect(page).to have_link("Projects")
        expect(page).to have_link("Contact")
        # expect(page).to have_link("Vinyl Collection")
      end
    end
  end
end