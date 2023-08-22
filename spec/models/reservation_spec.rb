require 'rails_helper'

RSpec.describe Reservation, type: :model do
  describe 'reservation model' do
    user = User.new(name: 'Spencer', email: 'test@gmail.com', password: '123456')
    property = Property.new(name: 'Ocean View, Steps to Sandy Beach!', location: 'Lincoln Beach, Lincoln County', image: 'photo-1', price: 45)

    subject { Reservation.new(user_id: user, property_id: property, date_of_visit: '2023-09-09', city: 'Accra') }

    before { subject.save }

    it 'city should not be blank' do
      subject.city = nil
      expect(subject).to_not be_valid
    end

    it 'date should not be blank' do
      subject.date_of_visit = nil
      expect(subject).to_not be_valid
    end

    it 'should check name characters' do
      subject.city = 'Lorem ipsum Lorem ipsum Lorem'
    end
  end
end
