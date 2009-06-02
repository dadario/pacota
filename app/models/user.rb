class User
  def self.find_by_login(login)
    storage.find(self.class, :login => login)
  end
end
