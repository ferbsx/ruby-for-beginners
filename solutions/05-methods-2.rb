<pre class="highlight ruby"><code><span class="k">def</span> <span class="nf">greet</span><span class="p">(</span><span class="nb">name</span><span class="p">)</span>
  <span class="n">greetings</span> <span class="o">=</span> <span class="p">[</span><span class="s2">"Hello"</span><span class="p">,</span> <span class="s2">"Hi"</span><span class="p">,</span> <span class="s2">"Ohai"</span><span class="p">,</span> <span class="s2">"ZOMG"</span><span class="p">].</span><span class="nf">shuffle</span>
  <span class="s2">"Hello </span><span class="si">#{</span><span class="n">greetings</span><span class="p">.</span><span class="nf">first</span><span class="si">}</span><span class="s2">!"</span>
<span class="k">end</span>
</code></pre>
