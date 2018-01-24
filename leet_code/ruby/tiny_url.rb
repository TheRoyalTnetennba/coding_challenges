# Encodes a URL to a shortened URL.
#
# @param {string} longUrl
# @return {string}
$current = 0
$urls = {}

def encode(longUrl)
	$urls[$current] = longUrl
	$current += 1
	"https://tinyurl.com/" + ($current - 1).to_s
end

# Decodes a shortened URL to its original URL.
#
# @param {string} shortUrl
# @return {string}
def decode(shortUrl)
	short = shortUrl.split('/').last
	$urls[short].to_s
end


# Your functions will be called as such:
# decode(encode(url))