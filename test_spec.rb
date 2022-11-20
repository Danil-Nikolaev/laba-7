# frozen_string_literal: true

gem 'rspec'
gem 'rspec-core'
require_relative 'laboratory_three'

RSpec.describe Triangle do
  describe 'initialize' do
    it 'check class Triangle' do
      triangle = Triangle.new(0, 0, 6, 0, 3, 4)
      expect(triangle.class).to eq(Triangle)
    end

    it 'Check class TrianglePrism' do
      traingle_prism = TrianglePrism.new(0, 0, 6, 0, 3, 4, 1)
      expect(traingle_prism.class).to eq(TrianglePrism)
    end

    it 'The Triangle class is the parent of the triangle prism class' do
      expect(TrianglePrism < Triangle).to eq(true)
    end
  end
end

RSpec.describe One do
  describe '#part_one' do
    it 'something' do
      arr = One.part_one('qw er ty hello my world dfv fdv sdf')
      expect(arr.length).to eq(4)
    end
  end
end
