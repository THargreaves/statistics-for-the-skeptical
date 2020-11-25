---
title: "Goodhart's Law"
date: '2020-08-27'
---

_This blog post is a lightly modified transcription of a segment I wrote for [Warwick Data Science Society](https://www.wdss.io/)'s podcast, [DataBasic](http://podcast.wdss.io/). The original episode can be found on [YouTube](https://youtu.be/aiKkLg-0vMc?t=321), or other platforms via the podcast's [landing page](http://podcast.wdss.io/)._

<hr>


Let me tell you a story about a man and his dog. And just trust me, this does have something to do with statistics.

It takes place in Paris, 1908, alongside the banks of the river Seine. One day, the stillness of the winter air was broken by the cries of a small child, having fallen into the waters after playing on the riverside. With few around, the child was at serious risk of drowning; that is, if it wasn't for a brave Newfoundland dog, that bounded into the icy stream to rescue this helpless victim.

Naturally, once the owner discovered his dog's heroic efforts, he petted him, praised him, and finally presented him with a succulent slice of steak. You might think that this is where the story ends, but no. Just two days later, another child—also playing alongside the Seine—fell victim to a similar feat. Don't fear though, because the same dog proudly saved the child by dragging it to the shore, to be praised just the same as before.

At this point, the neighbourhood was undoubtedly curious. Was there a series child-abuser in the area, pushing any unsuspecting child into the frozen current? It wasn't too long until an answer to this question was found. Yes, there was a serial offender. And his games soon stopped once he was caught red-handed. Or perhaps I should say, red-pawed.

You heard that right; this clever dog had made a discovery. If—whenever it saw a child playing near the river—it were to knock the child in, just to immediately pull them back out, he would have established himself a near infinite supply of steak. That is, until he was caught in the act, and the stream of treats promptly ran dry.

![](/resources/goodharts-law/nyt.png)

<center><i>The original <a href="https://timesmachine.nytimes.com/timesmachine/1908/02/02/104716889.html">New York Times article</a> detailing the occurance</i></center>


What can we learn from this tale, and how it help us in our practice of statistics? 

This anecdote is an example of Goodhart's Law: When a measure becomes a target, it ceases to be a good measure. In this case, our measure for success was the dog pulling a child out of the river. The problem is, by focusing too closely on this as our target, the dog quickly learned that it could cheat the system by pushing in the children itself.

Goodhart's law appears everywhere. 

When Soviet factories were given targets based on the number of nails they produced, the nails shrunk in size to the point of becoming useless. When weight became the new target, they grew to comical proportions. 

<img src="/resources/goodharts-law/nails.jpg" style="max-width:200px">

<center><i>A famous Soviet cartoon mockingly portraying an exagerated version of this tale</i></center>

Or how about in India, when the government offered money for each dead cobra that was turned in, in an attempt to reduce the abundance of loose cobra snakes? Much to the governments disdain, citizens started breeding their own cobras to game the system. Once the government became wise to this and ended the scheme, these were then released out into the wild, making the problem far worse than it was in the beginning.

There are also many examples of Goodhart's Law that appear when building statistical models for prediction. It's easy to obsess of the accuracy of a model, forgetting to consider how such accuracy was attained. Perhaps your dataset was unbalanced and your model has learnt to bias its answers towards one class. For example, when trying to predict whether patients have a rare disease, guessing 'no' for everyone will always give rise to high accuracy. 

![](/resources/goodharts-law/illness.svg)

<center><i>An image extract from an old <a href="https://www.ttested.com/inaccuracy-of-accuracy/">post</a> on my main blog <a href="https://www.ttested.com/">T-Tested</a> discussing the limitations of using accuracy to measure model performance in more detail</i></center>


Even worse, perhaps your dataset is not representative of the real world. A classic example is that of ALVINN, a self-driving car from the late 80s. Its performance was incredible...until it reached a bridge, at which point it lurched round so dangerously, with motions so manic, that the researchers had to take control. What went wrong? Later model inspection revealed that ALVINN actually wasn't that good at driving, but rather had learnt that if it kept the grassy verge on the side of the road to its left, it was doing just fine. This worked great until a bridge approached, and the verge disappeared, leading to chaos.

![](/resources/goodharts-law/alvinn.jpg)

<center><i>ALVINN—not quite as sleak as Tesla but certainly as flashy</i></center>

So, how do we come up with an ungameable metric? One that is robust to Goodhart's law? The answer is: we don't. Instead, we use a combination of metrics, heuristics, and carefully and thoughtful analysis of our model to try to understand how and why it came to its decisions. And most importantly, if we keep Goodhart's law at the front of our mind, we are much less likely to fall for it in the future.

Either way, stay skeptical.
