feature 'Viewing links' do 

  before(:each) do
     Link.create(url: 'http://www.makersacademy.com', title: 'Makers Academy', tags: [Tag.first_or_create(name: 'education')])
     Link.create(url: 'http://www.bubbles-delight.com', title: 'Bubbles Delight', tags: [Tag.first_or_create(name: 'bubbles')])
     Link.create(url: 'http://www.pop.com', title: 'Pop', tags: [Tag.first_or_create(name: 'bubbles')])
  end

  scenario 'I can see existing links on the links page' do
    visit '/links'
    expect(page.status_code).to eq 200

    within 'ul#links' do
      expect(page).to have_content "Makers Academy"
    end
  end

  scenario 'I can filter by tags' do
    visit '/links/tags/bubbles'

    expect(page).not_to have_content "Makers Academy"
    expect(page).to have_content "Bubbles Delight"
    expect(page).to have_content "Pop"
  end
end