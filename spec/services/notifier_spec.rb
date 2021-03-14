# frozen_string_literal: true

require "#{File.dirname(__FILE__)}/../spec_helper"
describe Notifier do
  describe '#call' do
    subject { Notifier.call(user_zips) }

    before do
      allow(TWITTER_CLIENT).to receive(:create_direct_message)
      FactoryBot.create(:location)
    end

    let(:user_zips) { [UserZip.new(user_id: 1, zip: '90210')] }

    context 'when a user subscribes to a matching Location' do
      let(:user_zips) { [UserZip.new(user_id: 1, zip: '90210')] }

      it { should eq({ clinics: 1, users: 1 }) }

      describe 'TWITTER_CLIENT' do
        subject { TWITTER_CLIENT }

        after { Notifier.call(user_zips) }

        it { is_expected.to receive(:create_direct_message) }
      end
    end
    context 'when a user subscribes to a non-existing Location' do
      let(:user_zips) { [UserZip.new(user_id: 1, zip: '90044')] }

      it { should eq({ clinics: 0, users: 0 }) }

      describe 'TWITTER_CLIENT' do
        subject { TWITTER_CLIENT }

        after { Notifier.call(user_zips) }

        it { is_expected.not_to receive(:create_direct_message) }
      end
    end
  end
end
