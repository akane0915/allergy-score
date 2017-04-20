class Fixnum
  define_method(:allergy) do
    allergies = {
      1 => "eggs",
      2 => "peanuts",
      4 => "shellfish",
      8 => "strawberries",
      16 => "tomatoes",
      32 => "chocolate",
      64 => "pollen",
      128 => "cats"
    }

    score_array = allergies.keys().reverse()
    results = []
    current_value = self
    score_array.each_index() do |index|
      if current_value./(score_array[index]) >= 1
        results.push(allergies.fetch(score_array[index]))
        current_value = current_value - score_array[index]
      end
    end
    results
  end
end
