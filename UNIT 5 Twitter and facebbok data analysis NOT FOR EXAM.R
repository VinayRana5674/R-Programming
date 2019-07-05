#working with twitter data set NOT FOR EXAM

install.packages("twitteR")
install.packages("ROAuth")
library("twitteR")
library("ROAuth")
download.file(url="http://curl.haxx.se/ca/cacert.pem",destfile="cacert.pem")
cred <- OAuthFactory$new(consumerKey='CJsUqXkLGJd9tw6ElBu8pEiiN',
                         consumerSecret='kf6wXWrBgVcW2MdZuZSgW2tJxGU2TU0tC4mOCS24WTvZBmuROD',
                         requestURL='https://api.twitter.com/oauth/request_token',
                         accessURL='https://api.twitter.com/oauth/access_token',
                         authURL='https://api.twitter.com/oauth/authorize')
cred$handshake(cainfo="cacert.pem")
save(cred, file="twitter authentication.Rdata")
load("twitter authentication.Rdata")
#registerTwitterOAuth(cred)
setup_twitter_oauth("CJsUqXkLGJd9tw6ElBu8pEiiN", "kf6wXWrBgVcW2MdZuZSgW2tJxGU2TU0tC4mOCS24WTvZBmuROD","1120179295958306816-CnkS7IhnAwHfhh4UiSk4FYaKqXLwzu","JBlmBXMpsRyUTRU2CUNBood7pkBpfikaOFgYldJ4qxSCi")
?setup_twitter_oauth
search.string <- "#narendramodi"
no.of.tweets <- 100

# Not done
tweets <- searchTwitter(search.string, n=no.of.tweets, lang="en")
tweets
library(tidyverse)
library(rtweet)
rahul_gandhi <- userTimeline("Rahul gandhi", n=90, includeRts=T)
narendra_modi <- userTimeline("Narendra Modi", n=100, includeRts=T)
rt <- search_tweets(
  "lang:en", geocode = lookup_coords("usa"), n = 1000
)
