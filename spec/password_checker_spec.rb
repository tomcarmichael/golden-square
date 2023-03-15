require "password_checker"

RSpec.describe PasswordChecker do
  it "Fails with correct error message if password is shorter than 8 characters" do
    checker = PasswordChecker.new
    expect{ checker.check("hi") }.to raise_error "Invalid password, must be 8+ characters"
  end
  it "Returns true if password is 8 characters long" do
    checker = PasswordChecker.new
    expect(checker.check("helloyou")).to eq true
  end
  it "Returns true if password is more than 8 characters long" do
    checker = PasswordChecker.new
    expect(checker.check("helloyouhowareyou")).to eq true
  end
end