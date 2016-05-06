feature 'Sign up' do
  
  scenario "User can sign up for an account" do
    expect { sign_up }.to change(User, :count).by(1)
    expect(page).to have_content "Welcome, hazukitran@gmail.com"
    expect(User.first.email).to eq 'hazukitran@gmail.com'
  end
  
end