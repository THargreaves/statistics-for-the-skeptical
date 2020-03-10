---
title: 'Survivorship Bias'
date: '2020-03-11'
---

## They Just Don't Make 'em Like They Used To

Last week, I found myself chatting to a fellow guitarist. As musicians go, guitarists are perhaps some of the most gear-obsessed. It was therefore unsurprising that this was where the conversation naturally led. In particular, we were soon talking about the guitars we own and play; my acquaintance preferring the older, vintage varieties. His reasoning for this preference was quite straightforward—"they just don't make 'em like they used to".

He went on to claim that because of mechanisation and automation in modern guitar manufacturing, you'd be better off buying a relic from the 60s or 70s when things were done "the proper way", than spending your money on a contemporary model. This is actually not an assertion I wish to dispute; indeed, I have bought many aged second-hand guitars, and they have all been great. Instead, I want to apply some skepticism to the reasoning behind this claim—the assumption that automation has led to a regression in the quality of guitar manufacturing. This may seem paradoxical—how can it be the case that I both agree with the purchase of old guitars over new yet dispute that they were made any better than their modern counterparts? The answer lies in a statistical misconception known as *Survivorship Bias*.

## I Will Survive

Survivorship bias is a statistical fallacy that regularly finds its ways into everyday conversation. It arises when we neglect to consider failures, focusing instead mainly on successes. This is an easy trap to fall into. After all, it would be unlikely that any failures would remain in the world for excessively long periods of time as the very nature of their failure makes them undesirable. Consider as an example two buildings erected on the same date in the distant past—one elegant and majestic; the other disfigured and repugnant. It should come as no surprise that the former would be more likely to survive the test of time, the latter liable to eventually be torn down and exchanged for a more tasteful replacement. It follows that when we look back on the historic buildings of a city, we are more likely see examples demonstrating greater beauty. This would give the impression that older buildings were constructed to a higher aesthetic standard than their modern counterparts. To some extent, this may be true, but it is certainly not the whole story.

The same holds true for the guitar example. Even if the production quality of guitars was unchanged throughout time, any high quality relic would be likely to last a lot longer than a low quality adversary. There are many factors that contribute to this. For example, high quality guitars are likely to:

* last longer simply because they are of high quality
* be looked after with greater care
* have greater sentimental value (and so be less likely to be disposed of or given away)

Whatever the underlying mechanism may be, the increased likelihood of survival for high quality guitars is undeniable. This leads to the appearance that older guitars are better made. If we don't want to fall for survivorship bias, however, we'll have to apply some skepticism and dig a bit further before we can jump to a conclusion. For example, we could look at an old guitar catalogue to see whether the examples we have today are truly representative of the larger historic population.

## Survivorship Bias in Action

To really drive my point home, I have created a short animation to showcase survivorship bias at work. For each year from 1960 to 2020, I have simulated the annual production of around 25 guitars. The initial quality of the guitars follows the same arbitrary distribution for each year (i.e. older guitars are neither better nor worse). As time progresses (marked by the vertical black line), the areas of the points shrink to zero at a rate dependent on their initial quality. This represents their deterioration and eventual destruction. After the simulation has made it to 2020 an interesting pattern emerges. Although each guitar was originally generated so that their quality was independent of the year of manufacturing, the final graph makes it _look_ like older guitars have a generally higher quality. This is not the case though, it is simply survivorship bias trying to fool us.

{% raw %}
<video controls>
  <source src="/resources/survivorship-bias/survivorship_bias_animation.mp4" type="video/mp4">
Your browser does not support the video tag.
</video>
{% endraw %}

<p><center><i>The source code for this animation can be found <a href="https://github.com/THargreaves/statisticsfortheskeptical/resources/survivorship-bias/survivorship-bias-animation.R">here</a></i></center></p>

Once you're aware of survivorship bias, you'll start to notice it everywhere. Another musical instance of the fallacy arises when people claim that modern pop music isn't as well-written as that of previous decades. Although there is [some evidence](https://playback.fm/blog/science-proved-music-getting-worse) to suggest that modern pop music is simpler than it was in the past, the true difference is likely to be far less than we perceive. After all, it's difficult to forget the lyrical poetic-panoply and sonic-splendor that is Queen's 'Bohemian Rhapsody'; this is less so the case for George Elrick's 1936 release 'I Like Bananas Because They Have No Bones'.

![](/resources/survivorship-bias/cover_arts.png)

<center><i>I joke, but 'I Like Bananas Because They Have No Bones' is a surprisingly good song</i></center>

## Stats Saves Lives

Survivorship bias is not only important for bringing some sense of reality to '[the wrong generation](http://www.genfkd.org/not-born-wrong-generation)' crowd. At times, it can be the difference between life and death.

One classic example occured during World War II. It concerned an analysis that was performed on damaged aircraft returning from missions. The analysis discovered that the areas of the plane marked in red in the image below were the most likely to return laced with bullet holes.

![](/resources/survivorship-bias/plane_shots.png)

<p><center><i>Image credit: <a href="https://commons.wikimedia.org/wiki/File:Survivorship-bias.png">Wikimedia Commons</a></i></center></p>

The researchers concluded that the best course of action was to apply more armour to these regions. This was until statistician [Abraham Wald](https://en.wikipedia.org/wiki/Abraham_Wald) pointed out that the study had only considered aircraft that had made it back, neglecting any that didn't. This is the exact description of survivorship bias—the army researchers only considered the 'successes' (planes that returned) and not the 'failures' (those shot down by the enemy). Ward instead proposed that the best place to position the new armour was everywhere _but_ the areas of frequent damage. This becomes clearer when we consider that World War II aircraft weapons weren't exactly precision instruments and so bullet holes could be assumed to be distributed uniformly. Despite this, only planes with bullet holes in certain places were returning, suggesting that any damage to other areas of the fuselage were likely fatal.

A similar example from World War I arose with the introduction of the Brodie helmet. This led to a dramatic increase in the frequency of admissions to the field hospital for severe head injuries. This almost led to a complete withdrawal of the helmet. That was until a watchful statistician applied some skeptism and reminded army command that a head injury is highly preferable to death (which may have been the conclusion of an incident before the introduction of the helmet)

## Closing Thoughts

I hope, now that you've seen a few examples of survivorship bias and its potentially severe consequences, you will be equipped to avoid falling for this fallacy when it next arises in life. But to help you avoid these misconceptions, there are a few red flags to watch out for that often indicate survivorship bias might be at play:

* Comparisons are made to the past, and specifically how it was better (e.g. guitars/pop music)
* Observations are being made about a person/object that relate to its destruction (e.g. bullet holes and helmets)
* Only the most notable examples of a group are being considered (e.g. historic architecture)

With these key ideas in mind, I would like to leave you with one final example to ponder. It is not difficult to find many high school dropouts that went on to be wildly successful. To name a few, Richard Branson, Quentin Tarantino, and Aretha Franklin all left school before reaching the age of sixteen. If we look at college dropouts, the search becomes even easier (the tech-trio Mark Zuckerburg, Bill Gates, and Steve Jobs for example). This is occasionally used by people to argue against the importance of tertiary and higher education. After all, if such successful people dropped out of their studies, it must be a good idea, right? Hopefully some skeptism and awareness of survivorship bias can help you poke some holes in this theory.

Finally, if you come across any examples of survivorship bias or can think of your own, please do share them in the discussion below.

Either way, stay skeptical.
