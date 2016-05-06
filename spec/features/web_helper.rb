def sign_up
  visit '/signup'
  fill_in :email, with: 'hazukitran@gmail.com'
  fill_in :password, with: 'hello'
  click_button 'Sign up'
end