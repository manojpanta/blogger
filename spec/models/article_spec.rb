require 'rails_helper'

describe Article, type: :model do
  describe 'validations' do
    it{should vlaidate_presenceOf(:title)}
    it{should vlaidate_presenceOf(:body)}
  end
end
