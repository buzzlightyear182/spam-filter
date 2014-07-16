require_relative '../spamfilter.rb'

describe "Spam Filter" do
  it "must return spam if 2 links" do
  	input = "http:// http://"
  	test = SpamFilter.new.filter(input)
    expect(test).to eq("spam")
  end

  it "checks if user is trusted" do
  	input = "http:// http://"
  	username="Jane"
  	test = SpamFilter.new.checkUser(username, input)
    expect(test).to eq(input)
  end

  it "checks if user is not trusted and posts spam" do
  	input = "http:// http://"
  	username="Edu"
  	test = SpamFilter.new.checkUser(username, input)
    expect(test).to eq("spam")
  end

  it "checks if user is not trusted and not spam" do
  	input = "http://"
  	username="Edu"
  	test = SpamFilter.new.checkUser(username, input)
    expect(test).to eq(input)
  end

   it "checks if user is trusted and posts spam" do
  	input = "http:// http:// http://"
  	username="Jane"
  	test = SpamFilter.new.checkUser(username, input)
    expect(test).to eq(input)
  end

end
