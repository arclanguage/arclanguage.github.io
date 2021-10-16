---
layout: default
title: Arc Programming Language
---

<div class='row'>
  <div class='col-md-6'>
    <div style='text-align:center'>
      <h2><a href='http://arclanguage.org'>Anarki Stable</a></h2>
      <p><i>Minor improvements to <a href='http://arclanguage.org'>Arc 3.2</a></i></p>
    </div>
    <ul>
      <li>Work through the <a href='tut-stable.html'>tutorial</a>.</li>
      <li>Read the <a href='/ref/'>detailed documentation</a>.</li>
      <li>Future official versions may make incompatible changes.</li>
    </ul>
    To install, first install <a href='http://git-scm.com'>git</a> and <a
    href='http://racket-lang.org'>racket</a>, and then:
    <pre style='margin:0 auto; text-align:left'>
<span style='color:grey'>$</span> git clone <a href='http://github.com/arclanguage/anarki'>http://github.com/arclanguage/anarki</a>
<span style='color:grey'>$</span> cd anarki
<span style='color:grey'>$</span> git checkout stable
<span style='color:grey'>$</span> ./arc.sh
<span style='color:grey'>arc&gt;</span> (quit)
<span style='color:grey'>$</span></pre>
    (<a href='http://arclanguage.org/install'>Official instructions.</a>)
  </div>

  <div class='col-md-6'>
    <div style='text-align:center'>
      <h2><a href='http://github.com/arclanguage/anarki'>Anarki</a></h2>
      <p><i>A 'wiki-like' community-supported fork of Arc</i></p>
    </div>
    <ul>
      <li>Gets more frequent updates and <a
      href='https://sites.google.com/site/arclanguagewiki/arc-3_1/known-bugs-and-gotchas'>bugfixes</a>
      from the folks at <a href='http://arclanguage.org/forum'>the forum</a>.</li>
      <li>Tries to keep with the spirit and philosophy of Arc. <a href='tut-anarki.html'>Its version of the tutorial</a> mostly follows Arc 3.2.</li>
      <li>Has <a href='anarki/help/'>reference documentation</a> that can also be accessed at the REPL.</li>
      <li>Like Arc, makes no guarantees of compatibility. Anyone can make changes to it.</li>
      <li>Commit privileges freely given to anyone who asks.</li>
      <li>A gateway to <a href='https://sites.google.com/site/arclanguagewiki'>more arcane forks</a>.</li>
    </ul>
    To install, first install <a href='http://git-scm.com'>git</a> and <a href='http://racket-lang.org'>racket (v7.7 or greater)</a>, and then:
    <pre style='margin:0 auto; text-align:left'>
<span style='color:grey'>$</span> raco pkg install sha
<span style='color:grey'>$</span> git clone <a href='http://github.com/arclanguage/anarki'>http://github.com/arclanguage/anarki</a>
<span style='color:grey'>$</span> cd anarki
<span style='color:grey'>$</span> ./arc.sh
<span style='color:grey'>arc&gt;</span> (help do)  <span style='color:blue'>; online help</span>
[mac] (do . args)
Evaluates each expression in sequence and returns the result
of the last expression.
<span style='color:grey'>arc&gt;</span> (load "tests.arc")  <span style='color:blue'>; lots of automated tests</span>
<span style='color:grey'>arc&gt;</span> (quit)
<span style='color:grey'>$</span> </pre>
  </div>
  <br clear='both'/>
</div>
