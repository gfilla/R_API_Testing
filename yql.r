
library(httr)

# 1. Find OAuth settings for yahoo:
#    https://developer.yahoo.com/oauth/guide/oauth-auth-flow.html
oauth_endpoints("yahoo")

# 2. Register an application at https://developer.apps.yahoo.com/projects
#    Replace key and secret below.
myapp <- oauth_app("yahoo",
                   key = "dj0yJmk9ODdBTHJMM3Z4SElJJmQ9WVdrOVl6RldTSFY2TjJzbWNHbzlNQS0tJnM9Y29uc3VtZXJzZWNyZXQmeD0yOA--",
                   secret = "c74de3eea4346d8057029942b685e9678cdae89d"
)
key = "dj0yJmk9ODdBTHJMM3Z4SElJJmQ9WVdrOVl6RldTSFY2TjJzbWNHbzlNQS0tJnM9Y29uc3VtZXJzZWNyZXQmeD0yOA--"
secret = "c74de3eea4346d8057029942b685e9678cdae89d"
# myapp = oauth_app("twitter",
#                   key="yourConsumerKeyHere",secret="yourConsumerSecretHere")
# sig = sign_oauth1.0(myapp,
#                     token = "yourTokenHere",
#                     token_secret = "yourTokenSecretHere")

r = GET("https://api.login.yahoo.com/oauth/v2/get_request_token", authenticate(key, secret))
r
