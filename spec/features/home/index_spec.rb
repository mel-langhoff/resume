require 'rails_helper'

RSpec.describe 'Root Page', type: :feature do
  describe 'when a user visits the root path /' do
    describe 'header' do
      it 'has links to about, resume, projects, contact, & vinyl collection' do
        visit root_path

        expect(page).to have_link("about", href: bio_path)
        expect(page).to have_link("resume", href: resume_path)
        expect(page).to have_link("projects", href: projects_path)
        expect(page).to have_link("contact", href: contact_path)
        # expect(page).to have_link("Vinyl Collection", href: vinyls_path)
      end
    end
  end
end