
library(httr)

# 1. Find OAuth settings for yahoo:
#    https://developer.yahoo.com/oauth/guide/oauth-auth-flow.html
oauth_endpoints("yahoo")

# 2. Register an application at https://developer.apps.yahoo.com/projects
#    Replace key and secret below.
myapp <- oauth_app("yahoo",
                   key = "dj0yJmk9ZEp0d2J2MFRuakNQJmQ9WVdrOU0zaHRUMlJpTTJNbWNHbzlNQS0tJnM9Y29uc3VtZXJzZWNyZXQmeD00Nw--",
                   secret = "82f339a41f71a3b4d9b840be427dde132e36d115"
)

myapp = oauth_app("twitter",
                  key="yourConsumerKeyHere",secret="yourConsumerSecretHere")
sig = sign_oauth1.0(myapp,
                    token = "yourTokenHere",
                    token_secret = "yourTokenSecretHere")
homeTL = GET("https://api.twitter.com/1.1/statuses/home_timeline.json", sig)