import tweepy

consumer_key = "wOamtaDCZWK05MkOLDrN2UVo6";
#eg: consumer_key = "YisfFjiodKtojtUvW4MSEcPm";


consumer_secret = "ftZVojaBwW7IixZDOBfGX4b9BZmuOJjpfqJBDw2dNzo83JwjuR";
#eg: consumer_secret = "YisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPm";

access_token = "848455016499232768-6q3eiOOl3lI8f43hau8b9dDYZMmlO27";
#eg: access_token = "YisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPm";

access_token_secret = "Ii3zIvQboMCmBfwKPpoiGVP28JAmh8JW0h09JIchTkM07";
#eg: access_token_secret = "YisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPm";


auth = tweepy.OAuthHandler(consumer_key, consumer_secret)
auth.set_access_token(access_token, access_token_secret)

api = tweepy.API(auth)



