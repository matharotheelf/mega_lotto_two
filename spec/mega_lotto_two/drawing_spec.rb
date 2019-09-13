require "spec_helper"
module MegaLottoTwo
  RSpec.describe Drawing do
    describe '#draw' do
      let (:drawing) {Drawing.new.draw}
      let (:drawing_two) {Drawing.new.draw}
      it 'returns an Array' do
        expect(drawing).to be_an(Array)
      end

      it 'returns an Array with 5 elements' do
        expect(drawing.size).to eq(5)
      end

      it 'return an Array of integers less than 60' do
        drawing.each do |item|
          expect(item).to be < 60
        end
      end

      it 'each element chosen randomly' do
        allow_any_instance_of(Object).to receive(:rand).and_return(30)
        expect(drawing).to eq(5.times.map{30})
        allow_any_instance_of(Object).to receive(:rand).and_return(50)
        expect(drawing_two).to eq(5.times.map{50})
      end
    end
  end
end
