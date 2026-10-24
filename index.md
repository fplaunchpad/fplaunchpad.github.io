---
layout: home
title: Home
permalink: /
---

<section class="home-intro" aria-labelledby="home-title">
  <p class="home-kicker">IIT Madras · Research and education</p>
  <h1 id="home-title">Efficient, reliable and trustworthy software with mathematical guardrails.</h1>
  <p>FP Launchpad brings together functional programming, systems research, and formal methods. We build open-source systems and train the next generation of researchers, engineers, and maintainers.</p>
  <a href="{{ '/about/' | relative_url }}">About the centre &rarr;</a>
</section>

<section class="home-section" aria-labelledby="our-work">
  <h2 id="our-work">Our work</h2>
  <div class="home-work">
    <div>
      <h3>Research</h3>
      <p>From effect handlers and concurrent programming to verified runtimes and distributed systems.</p>
      <a href="{{ '/projects/' | relative_url }}#research">Explore our research &rarr;</a>
    </div>
    <div>
      <h3>Open source</h3>
      <p>Contributions to OCaml 5, multicore runtimes, and tools for building and testing real systems.</p>
      <a href="{{ '/projects/' | relative_url }}#open-source">Explore our contributions &rarr;</a>
    </div>
    <div>
      <h3>Education</h3>
      <p>Learn functional programming with our OCaml course, interactive book, and systems tutorials.</p>
      <a href="{{ '/education/' | relative_url }}">Explore learning resources &rarr;</a>
    </div>
  </div>
</section>

<section class="home-section" aria-labelledby="latest">
  <h2 id="latest">Latest</h2>
  {% include home-latest.html %}
  <p class="home-more"><a href="{{ '/updates/' | relative_url }}">All updates, events, and talks &rarr;</a></p>
</section>

<section class="home-section" aria-labelledby="people">
  <h2 id="people">People</h2>
  <p>Our faculty, research staff, fellows, and students work across programming languages, systems, and formal verification, supported by an international advisory board.</p>
  <p><a href="{{ '/about/' | relative_url }}#team">Meet the team &rarr;</a></p>
</section>

<section class="home-section" aria-labelledby="stay-in-touch">
  <h2 id="stay-in-touch">Stay in touch</h2>
  <p>For occasional updates on our work, events, and opportunities, <a href="mailto:contact@fplaunchpad.org?subject=Subscribe%20to%20Newsletter">subscribe to our newsletter</a> by emailing contact@fplaunchpad.org with the subject “Subscribe to Newsletter”. You can also <a href="{{ site.zulip_url }}">join the conversation on Zulip</a>.</p>
</section>
