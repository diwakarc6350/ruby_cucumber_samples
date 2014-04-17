class LoginPage
  include PageObject

  page_url 'http://wiki.somesite.com'

  text_field(:username, :id => 'os_username')
  text_field(:password, :id => 'os_password')
  button(:login, :id => 'loginButton')

  def login_as(username, password)
    self.username = username
    self.password = password
    self.login
  end
end
