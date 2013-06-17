User.create!(
  username: 'chap',
  email: 'chapambrose@gmail.com',
  first_name: 'Chap',
  last_name: 'Ambrose',
  password: '35008b4b54eb60c5190bbbae538975ab', # monkey
  password_salt: 'salty'
)

Opro::Oauth::ClientApp.create(
  name: "Artful.ly",
  app_id: "87ef8bc91b2d4173788c43f258f0fd44",
  app_secret: "1a76a2a53b385c88ac9c7179a9e84ecb",
  permissions: {},
  user_id: User.first.id
)
