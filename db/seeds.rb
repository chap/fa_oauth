User.create!(
  username: 'chap',
  email: 'chapambrose@gmail.com',
  first_name: 'Chap',
  last_name: 'Ambrose',
  password: '35008b4b54eb60c5190bbbae538975ab', # monkey
  password_salt: 'salty'
)

Opro::Oauth::ClientApp.create_with_user_and_name(User.first, 'Artful.ly')
