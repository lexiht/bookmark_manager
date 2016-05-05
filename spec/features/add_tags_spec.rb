feature 'Add tag to links' do
	before do
    visit '/links/new'

    fill_in :title, with: 'Google'
    fill_in :url, with: 'http://www.google.com'		
	end

  scenario 'I can add a tag to links' do
    fill_in :tags, with: 'search'
    click_button "Submit"
    expect(page).to have_content 'search'
  end

  scenario 'I can add multiple tags to links' do
  	fill_in :tags, with: 'SEO,Marketing'
  	click_button "Submit"
  	expect(page).to have_content '#SEO #Marketing'
  end
end