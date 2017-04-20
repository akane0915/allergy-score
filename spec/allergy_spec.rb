require('rspec')
require('allergy')

describe('Fixnum#allergy') do
  it('take the user input and check to see if divisible by 128 return the modulo.  If so, program with output "cat"') do
    expect(128.allergy()).to(eq(["cats"]))
  end

  it('take the user input and check to see if divisible by 128 and 64.  If so, program with output "cat" and "pollen"') do
    expect(192.allergy()).to(eq(["cats","pollen"]))
  end

  it('take the user input and check to see if divisible by 128, 64, and 32.  If so, program with output "cat", "pollen", "chocolate"') do
    expect(224.allergy()).to(eq(["cats","pollen", "chocolate"]))
  end
  it('take the user input and check all alergies') do
    expect(327.allergy()).to(eq(["cats", "pollen", "chocolate", "tomatoes", "strawberries", "shellfish", "peanuts", "eggs"]))
  end
end
