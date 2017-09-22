# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
  s.split('').sort.join('') == t.split('').sort.join('')
end