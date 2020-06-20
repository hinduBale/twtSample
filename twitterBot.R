install.packages("rtweet")
library("rtweet")

source("secret.R")

vignette("auth", "rtweet")

token <- create_token(
  app = "CodeForACauseBot",
  consumer_key = api_key,
  consumer_secret = api_secret_key,
  access_token = access_token,
  access_secret = access_token_secret
)

post_tweet("This is also a test tweet")

rstats <- search_tweets("rstats", retryonratelimit = T,n = 5)

post_favorite(rstats$status_id[1])
