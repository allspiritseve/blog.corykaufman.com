---
layout: blog
title: How I keep track of my prepaid phone balance
---

# {{ page.title }}

We recently switched from T-Mobile (postpaid) to Airvoice (prepaid), cutting our cellphone bill in half. 

The plan that best fits our needs involves buying $10 "cards" that expire after 30 days. Every new card that's purchased resets the clock, so we don't lose a balance we don't use. We can't set any sort of recurring purchase, so upping our balance has to be done at least once a month (and more often if our balance is going to expire).

Unfortunately, while the plan is super cheap, I know I would never remember to buy more minutes unless I had some way of automating the process. Not only do I have to keep track of when the balance is low, but if we aren't using many minutes in a month, I need to know how much time we have left before our balance expires.

# The solution: web scraping!

I noticed on Airvoice's website that you can submit a form with your phone number, and it will let you know your current balance and balance expiration date *without logging in*. 

I found a gem called Mechanize that can submit forms for me. From there, it was simple enough to wire together a rake task that submits the form, grabs the data, and sends me an email. E.g. here's what I got today:

> Airvoice Balance EXPIRES SOON<br />
> Michael's account balance: 13.50 expires on 12/5/2012
> Cory's account balance: 30.00 expires on 12/23/2012

Ya esta!
