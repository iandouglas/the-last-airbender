require 'rails_helper'

RSpec.feature 'user can search for nation members' do
    it 'should show Fire Nation members and data' do
        visit '/'
        select 'Fire Nation', from: :nation
        click_on 'Search For Members'

        expect(current_path).to eq(search_path)

        # dream drive

        expect(page).to have_content('There are 97 members in the Fire Nation')
        expect(page).to have_css('.member', count: 97)

        within(first('.member')) do
            within('.name') do
                expect(page).to have_content('Afiko')
            end
            within('.photo') do
                expect(page).to have_css("img[src*='https://vignette.wikia.nocookie.net/avatar/images/2/24/Afiko.png/revision/latest?cb=20121121024128']")
            end
            within('.allies') do
                expect(page).to have_content('Fire Nation')
            end
            within('.enemies') do
                expect(page).to have_content('Aang')
            end
            within('.affiliation') do
                expect(page).to have_content('Fire Nation')
            end
        end
    end
end