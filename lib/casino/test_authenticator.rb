require 'casino/authenticator'
require 'faker'

class CASino::TestAuthenticator
  # @param [Hash] options
  def initialize(options)
    @options = options
  end

  def validate(username, password)
    @username = username
    @password = password
    if username != password
      false
    else
      generate_user
      @user
    end
  end

  private
  def generate_user
    @user = {
      username: @username,
      extra_attributes: extra_attributes
    }
  end

  def extra_attributes
    attr = {}
    attr = @options[:extra_attributes] if @options[:extra_attributes].is_a?(Hash)
    attr[:mail] = Faker::Internet.email if @options[:mail]
    attr.length == 0 ? nil : attr
  end
end
