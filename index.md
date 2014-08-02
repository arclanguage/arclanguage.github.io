---
layout: default
title: Arc Programming Language
---

<div class='row'>
  <div class='col-md-6'>
    <div style='text-align:center'>
      <h2><a href='http://arclanguage.org'>Arc 3.1</a></h2>
      <p><i>A lisp dialect for sketching out programs</i></p>
    </div>
    <ul>
      <li>Try it in your browser at <a href='http://tryarc.org'>tryarc.org</a>.</li>
      <li>Work through the official <a href='http://ycombinator.com/arc/tut.txt'>tutorial</a>.</li>
      <li>Read the <a href='/ref/'>detailed documentation</a>.</li>
      <li>Future versions may make incompatible changes.</li>
    </ul>
    To install, first install <a href='http://racket-lang.org'>racket</a>,
    download <a href='http://ycombinator.com/arc/arc3.1.tar'>arc 3.1</a>,
    and then:
    <pre style='margin:0 auto; padding:5px; width:80%; text-align:left'>
<span style='color:grey'>$</span> tar xf arc3.1.tar
<span style='color:grey'>$</span> cd arc3.1
<span style='color:grey'>$</span> racket -f as.scm
<span style='color:grey'>arc&gt;</span> (quit)
<span style='color:grey'>$</span></pre>
    <div style='font-size:small'>(<a href='http://arclanguage.org/install'>Official and outdated instructions.</a>)</div>
  </div>

  <div class='col-md-6'>
    <div style='text-align:center'>
      <h2><a href='http://github.com/arclanguage/anarki'>Anarki</a></h2>
      <p><i>A 'wiki-like' community-supported fork of arc</i></p>
    </div>
    <ul>
      <li>Gets more frequent updates and <a
      href='https://sites.google.com/site/arclanguagewiki/arc-3_1/known-bugs-and-gotchas'>bugfixes</a>
      from the folks at <a href='http://arclanguage.org/forum'>the forum</a>.
      (Arc 3.1 was last updated in 2009.)</li>
      <li>Tries to keep with the spirit and philosophy of arc. The <a href='http://ycombinator.com/arc/tut.txt'>tutorial</a> still applies to it.</li>
      <li>Like arc, makes no guarantees of compatibility. Anyone can make changes to it.</li>
      <li>Commit privileges freely given to anyone who asks.</li>
    </ul>
    To install, first install <a href='http://git-scm.com'>git</a>, <a href='http://mercurial.selenic.com'>mercurial</a> and <a href='http://racket-lang.org'>racket</a>, and then:
    <pre style='margin:0 auto; text-align:left'>
<span style='color:grey'>$</span> git clone <a href='http://github.com/arclanguage/anarki'>http://github.com/arclanguage/anarki</a>
<span style='color:grey'>$</span> cd anarki
<span style='color:grey'>$</span> hg clone <a href='https://bitbucket.org/zck/unit-test.arc'>https://bitbucket.org/zck/unit-test.arc</a>
<span style='color:grey'>$</span> ./arc
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
