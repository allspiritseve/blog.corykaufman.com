---
layout: blog
title: How to mock localhost IP address for geocoding in Rails
---

# {{ page.title }}

This took me a while to figure out, so I figured I'd write down my solution in case someone else is trying to do the same thing.

I'm using the Geocoder gem for [Townstage](http://townstage.com), and when testing locally, it can't geocode my location because my ip address is localhost: 127.0.0.1.

I'd much prefer to hard code the ip address so when testing locally, it thinks I'm always in, say, Ann Arbor. Here's how I did it:

{% highlight ruby %}
class Rack::Request
  def ip
    '98.209.117.83'
  end
end
{% endhighlight %}

Voila!
