import (
  "strings"
  "sort"
)

func isAnagram(s string, t string) bool {
  sarr, tarr := strings.Split(s, ""), strings.Split(t, "")
  sort.Strings(sarr)
  sort.Strings(tarr)
  return strings.Join(sarr, "") == strings.Join(tarr, "")
}