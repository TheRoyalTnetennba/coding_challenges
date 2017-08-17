def solve(a0, a1, a2, b0, b1, b2)
    alice = 0
    bob = 0
    a = [a0, a1, a2]
    b = [b0, b1, b2]
    a.each_index do |i|
        alice += 1 if a[i] > b[i]
        bob += 1 if a[i] < b[i]
    end
    print "#{alice} #{bob}"
end
