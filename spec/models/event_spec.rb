require 'rails_helper'

RSpec.describe Event, type: :model do
  describe "validations" do
    it "is invalid without a category" do
      event = Event.new(categories: [])
      event.valid?
      expect(event.errors).to have_key(:categories)
    end

    it "is invalid without a name" do
      event = Event.new(name: nil)
      event.valid?
      expect(event.errors).to have_key(:name)
    end

    it "is invalid with a name longer than 50 characters" do
      event = Event.new(name: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. ")
      event.valid?
      expect(event.errors).to have_key(:name)
    end
  end

  describe "#bargain?" do
    let(:bargain_event) { create :event, price: 20 }
    let(:non_bargain_event) { create :event, price: 200 }

    it "returns true if the price is smaller than 30 EUR" do
      expect(bargain_event.bargain?).to eq(true)
      expect(non_bargain_event.bargain?).to eq(false)
    end
  end

  describe ".order_by_price" do
      let!(:event1) { create :event, price: 100 }
      let!(:event2) { create :event, price: 200 }
      let!(:event3) { create :event, price: 50 }

      it "returns a sorted array of rooms by prices" do
        # note that they should not come out in the order that they were created
        expect(Event.order_by_price).to eq([event3, event1, event2])
      end
    end

end
    # it "is invalid without categories"
    # it "is invalid without location"
    # it "is invalid without capacity"
    # it "is invalid without starts_at"
    # it "is invalid without ends_at"
    # it "is invalid without name"
    # it "is invalid with a name longer than 50 characters"
    # it "is invalid without description"
    # it "is invalid with a description longer than 500 characters"
    # it "is invalid without includes_food"
    # it "is invalid without includes_drinks"
