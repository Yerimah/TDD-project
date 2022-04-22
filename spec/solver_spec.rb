require_relative '../solver'

describe Solver do
  context 'test for the solver class' do
    before(:each) do
      @solve = Solver.new
    end

    it 'checks if the correct factorial is returned' do
      expect(@solve.factorial(4)).to eql(24)
      expect(@solve.factorial(5)).to eql(120)
      expect(@solve.factorial(10)).to eql(3_628_800)
      expect(@solve.factorial(2)).to eql(2)
      expect(@solve.factorial(7)).to eql(5_040)
    end

    it 'checks that the factorial of 0 returns 1' do
      expect(@solve.factorial(0)).to eql(1)
    end

    it 'should return the reverse of a string' do
      expect(@solve.reverse('hello')).to eql 'olleh'
      expect(@solve.reverse('Benjamin')).to eql 'nimajneB'
      expect(@solve.reverse('Daniel')).to eql 'leinaD'
    end

    it 'run fizzbuzz method with argument integer number and check result ' do
      expect(@solve.fizzbuzz(10)).to eq 'buzz'
      expect(@solve.fizzbuzz(11)).to eq 11
      expect(@solve.fizzbuzz(12)).to eq 'fizz'
      expect(@solve.fizzbuzz(13)).to eq 13
      expect(@solve.fizzbuzz(14)).to eq 14
      expect(@solve.fizzbuzz(15)).to eq 'fizzbuzz'
    end

    it 'throws exception when negative number is passed' do
      expect { @solve.factorial(-1) }.to raise_error(ArgumentError)
    end
  end
end
