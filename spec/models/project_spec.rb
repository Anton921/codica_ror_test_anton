# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Project, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:description) }
  it { should have_many(:tasks).dependent(:destroy) }
end
