require 'spec_helper'
require 'casino/test_authenticator'

describe CASino::TestAuthenticator do
  let(:options) { { } }
  let(:subject) { described_class.new(options) }
  let(:connection) { Object.new }


  describe '#validate' do
    let(:username) { 'test' }

    context 'when validation succeeds' do
      let(:password) { 'test' }
      it 'returns the user data' do
        subject.validate(username, password).should == {
          username: username,
          extra_attributes: nil
        }
      end
    end

    context 'when validation fails' do
      let(:password) { 'foo' }
      it 'returns false' do
        subject.validate(username, password).should == false
      end
    end

  end
end
