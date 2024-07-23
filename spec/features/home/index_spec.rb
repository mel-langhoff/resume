require 'rails_helper'

RSpec.describe 'Root Page', type: :feature do
  describe 'when a user visits the root path /' do
    describe 'header' do
      it 'has links to about, resume, projects, contact, & vinyl collection' do
        visit root_path

        expect(page).to have_link("About", href: bio_path)
        expect(page).to have_link("Resume", href: resume_path)
        expect(page).to have_link("Projects", href: projects_path)
        expect(page).to have_link("Contact", href: contact_path)
        # expect(page).to have_link("Vinyl Collection", href: vinyls_path)
      end
    end
  end
end