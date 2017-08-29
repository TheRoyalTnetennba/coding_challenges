def reverse(x)
    sign = x > 0 ? 1 : -1
    str = x.to_s.reverse
    str.to_i >= 2147483651 ? 0 : str.to_i * sign
end