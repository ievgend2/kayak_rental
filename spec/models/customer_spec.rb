require 'rails_helper'

RSpec.describe Customer, type: :model do
  subject { Customer.new(last_name: "About Education", first_name: "Ievgen", email: "ievgensemail@example.com" )}
  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end
  it "is not valid without a last_name" do
    subject.last_name=nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a body" do
    subject.body=nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a customer_id" do
    subject.customer_id=nil
    expect(subject).to_not be_valid
  end

  it "is not valid if the last_name less than 2 chars" do
    subject.last_name="a"
    expect(subject).to_not be_valid
  end
  it "is not valid if the body less than 2 chars" do
    subject.first_name="a"
    expect(subject).to_not be_valid
  end

end
