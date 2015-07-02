What's this
-----------
It dumps request info using [sinatra](http://www.sinatrarb.com/).

Execute
-------

```
bundle install
bundle exec ruby app.rb
```

It was listened to 4567 port on your server.

Test
----

* GET

```
curl -X GET \
  http://hostname:4567/test?hoge=fuga
```

You get the below json response.

```
{
    "body": "\"\"",
    "params": "{\"hoge\":\"fuga\",\"splat\":[\"test\"],\"captures\":[\"test\"]}",
    "path_info": "/test",
    "method": "GET",
    "query_string": "hoge=fuga",
    "content_length": null,
    "media_type": null,
    "form_data": false
}
```

* POST

```
curl -X POST \
  http://hostname:4567/test \
  -d '{"hoge":"fuga"}' \
  -H "Content-Type: application/json"
```

You get the below json response.

```
{
    "body": "{\"hoge\":\"fuga\"}",
    "params": "{\"splat\":[\"test\"],\"captures\":[\"test\"]}",
    "path_info": "/test",
    "method": "POST",
    "query_string": "",
    "content_length": "15",
    "media_type": "application/json",
    "form_data": false
}
```

Version
-------

* Ruby 2.2.0p61
* Gem 2.4.6
* Other libraries version confirm to Gemfile