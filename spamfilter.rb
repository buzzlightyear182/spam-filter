class SpamFilter

	attr_accessor :user

	def initialize
		@user = {}
		@user["Jane"] = 'trusted'
		@user["Edu"] = 'not trusted'
	end

	def checkUser(username, input)
		if @user[username] != 'trusted'
			filter(input)
		else
			input
		end
	end

	def filter(input)
		inputArray = input.split('http://')
		if inputArray.length >= 2
			return "spam"
		else
			input
		end
	end

end
