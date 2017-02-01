require 'spec_helper'
require 'casino/test_authenticator'

describe CASino::TestAuthenticator do
  let(:options) { { } }
  let(:subject) { described_class.new(options) }
  let(:connection) { Object.new }
  let(:username) { 'test' }
  let(:password) { 'test' }

  describe '#validate when options are nil' do
    let(:options) { nil }

    it 'does not raise an error' do
      expect{subject.validate(username, password)}.to_not raise_error
    end
  end

  describe '#validate' do
    context 'when validation succeeds' do
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

    context 'when a mail attribute is required' do
      let (:options) { { mail: true } }
      it 'returns a mail attribute' do 
        res = subject.validate(username, password)
        res.should have_key(:extra_attributes)
        res[:extra_attributes][:mail].should be_a_kind_of(String)
      end
    end

    context 'when extra_attributes are given' do
      let (:options) { { mail: true, extra_attributes: { first_name: 'Clark', last_name: 'Kent' } } }
      let (:password) { 'test' }
      it 'returns the extra_attributes' do
        res = subject.validate(username, password)
        res.should have_key(:extra_attributes)
        res[:extra_attributes][:first_name].should eql('Clark')
        res[:extra_attributes][:last_name].should eql('Kent')
        options[:extra_attributes][:mail].should eql(nil)
      end
    end

  end
end
