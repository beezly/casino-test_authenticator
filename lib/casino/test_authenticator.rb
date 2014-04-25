require 'casino/authenticator'

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
    nil
  end
end
