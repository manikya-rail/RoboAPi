require "rails_helper"
require "spec_helper"

RSpec.describe User, type: :model do
  it { is_expected.to be_mongoid_document }
end

RSpec.describe User, type: :model do
  it { is_expected.to be_dynamic_document }
  it { is_expected.to have_field(:email).of_type(String)}
  it { is_expected.to validate_presence_of(:firstName) }
  it { is_expected.to validate_uniqueness_of(:email) }
end

