def digit_cancelling(numer, denom)
  return false if numer % 10 == 0 || denom % 10 == 0
  cancelled_numer = numer.to_s.split('').map
  cancelled_denom = denom.to_s.split('').map
  common = cancelled_numer.select { |a| cancelled_denom.include? a }
  return false if common.empty?
  cancelled_numer = cancelled_numer.reject { |a| common.include? a }.join.to_i
  cancelled_denom = cancelled_denom.reject { |a| common.include? a }.join.to_i
  return false if cancelled_denom.zero?
  if cancelled_numer / cancelled_denom.to_f == numer / denom.to_f
    [cancelled_numer, cancelled_denom]
  else
    false
  end
end

def find_digit_cancelling_fractions
  fraction_product = [1, 1]
  (1..99).each do |numer|
    (1..99).each do |denom|
      next unless numer < denom
      reduction = digit_cancelling(numer, denom)
      if reduction
        fraction_product[0] *= reduction[0]
        fraction_product[1] *= reduction[1]
      end
    end
  end
  fraction_product[1] / fraction_product[0]
end
