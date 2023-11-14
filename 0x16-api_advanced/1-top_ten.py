#!/usr/bin/python3
"""
List the TOP 10 of popular in Reddit
"""

import requests as req
import sys
headers = {"User-Agent": "User_Agent_/3.0"}


def top_ten(subreddit):
    """Top Ten popular"""
    subreddit = sys.argv[1]
    url = "https://api.reddit.com/r/{}/hot?limit=10".format(subreddit)
    response = req.get(url, allow_redirects=False, headers=headers)
    if response.status_code == 200:
        data = response.json()
        for query in data['data']['children']:
            print(query['data']['title'])
    return None
