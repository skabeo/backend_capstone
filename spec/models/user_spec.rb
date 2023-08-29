require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'User model' do
    subject { User.new(name: 'Spencer', email: 'test@gmail.com', password: '123456') }

    before { subject.save }

    it 'name should not black' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'should be valid' do
      expect(subject).to be_valid
    end

    it 'should check name length' do
      subject.name = 'Lorem ipsum Lorem Ipsum'
      expect(subject).to_not be_valid
    end

    it 'should check the email format' do
      subject.email = 'test'
      expect(subject).to_not be_valid
    end
  end
end
