feature 'Sign up' do
  
  scenario "User can sign up for an account" do
    expect { sign_up_correct }.to change(User, :count).by(1)
    expect(page).to have_content "Welcome, hazukitran@gmail.com"
    expect(User.first.email).to eq 'hazukitran@gmail.com'
  end

  scenario 'checks mismatching password' do
    expect { sign_up_incorrect }.not_to change(User, :count)
    # expect(page).to have_content "Password and confirmation password do not match"
  end

end