# Write your code here.

def dictionary
 dictionary = {
		"hello" => 'hi',
		"to" => '2',
		"two" => '2',
		"too" => '2',
		"for" => '4',
		"four" => '4',
		"be" => 'b',
		"you" => 'u',
		"at" => '@',
		"and" => '&'
	}
end

def word_substituter(tweet)
 substitutes = dictionary
	words = tweet.split(" ")
	words.map do |word|
		if substitutes[word.downcase]
			substitutes[word.downcase]
		else
			word
		end
	end .join(" ")
end 


def bulk_tweet_shortener(tweets)
	tweets.each {|tweet| puts word_substituter(tweet)}
end


def selective_tweet_shortener(tweet)
	if tweet.length > 140
		word_substituter(tweet)
	else
		tweet
	end
end


def shortened_tweet_truncator(tweet)
	if tweet.length > 140
		while tweet.length > 140 do
			tweet1 = tweet[0..136] + "..."
			tweet = tweet[137..tweet.length]
		end
		tweet1
	else
		tweet
	end
end