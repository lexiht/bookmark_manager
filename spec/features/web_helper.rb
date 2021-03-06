def sign_up_correct
  visit '/signup'
  fill_in :email, with: 'hazukitran@gmail.com'
  fill_in :password, with: 'hello'
  fill_in :password_confirmation, with: 'hello'
  click_button 'Sign up'
end

def sign_up_incorrect
  visit '/signup'
  fill_in :email, with: 'hazukitran@gmail.com'
  fill_in :password, with: 'hello'
  fill_in :password_confirmation, with: 'helloworld'
  click_button 'Sign up'
end

def sign_up_without_email
  visit '/signup'
  fill_in :email, with: ""
  click_button 'Sign up'
end

def sign_up_invalid_email
  visit '/signup'
  fill_in :email, with: "dhfgo.@com"
  click_button 'Sign up'
end