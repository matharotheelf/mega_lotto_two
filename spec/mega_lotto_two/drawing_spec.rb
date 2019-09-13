require "spec_helper"
module MegaLottoTwo
  RSpec.describe Drawing do
    describe '#draw' do
      let (:drawing) {Drawing.new.draw}
      it 'returns an Array' do
        expect(drawing).to be_an(Array)
      end
    end
  end
end
