require 'rails_helper'

RSpec.describe Property, type: :model do
  describe 'Property model' do
    subject { Property.new(name: 'Ocean View, Steps to Sandy Beach!', location: 'Lincoln Beach, Lincoln County', image: 'photo-1', price: 45) }

    before { subject.save }

    it 'should have name present' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'should have location present' do
      subject.location = nil
      expect(subject).to_not be_valid
    end

    it 'should have image URL present' do
      subject.image = nil
      expect(subject).to_not be_valid
    end

    it 'should have price present' do
      subject.price = nil
      expect(subject).to_not be_valid
    end

    it 'should check name length' do
      subject.name = 'Lorem ipsum Lorem ipsum Lorem ipsum'
      expect(subject).to_not be_valid
    end

    it 'price should be an integer' do
      subject.price = false
      expect(subject).to_not be_valid
    end

    it 'should check location characters' do
      subject.location = 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum'
      expect(subject).to_not be_valid
    end
  end
end
