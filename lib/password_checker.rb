class PasswordChecker
  def check(password)
    if password.length >= 8
      true
    else
      fail "Invalid password, must be 8+ characters"
    end
  end
end