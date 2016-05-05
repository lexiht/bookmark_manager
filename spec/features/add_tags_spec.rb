feature 'Add tag to links' do 
  scenario 'I can add tag to links' do
    visit '/links/new'

    fill_in :title, with: 'Google'
    fill_in :url, with: 'http://www.google.com'
    fill_in :tags, with: 'search'
    click_button "Submit"

    expect(current_path).to eq '/links'
    link = Link.first
    expect(link.tags.map(&:name)).to include 'search'
  end
end