<pre class="highlight ruby"><code><span class="n">languages</span> <span class="o">=</span> <span class="p">{</span>
  <span class="ss">:de</span> <span class="o">=&gt;</span> <span class="s1">'German'</span><span class="p">,</span>
  <span class="ss">:en</span> <span class="o">=&gt;</span> <span class="s1">'English'</span><span class="p">,</span>
  <span class="ss">:es</span> <span class="o">=&gt;</span> <span class="s1">'Spanish'</span><span class="p">,</span>
<span class="p">}</span>
<span class="n">dictionary</span> <span class="o">=</span> <span class="p">{</span>
  <span class="ss">:de</span> <span class="o">=&gt;</span> <span class="p">{</span> <span class="ss">:one</span> <span class="o">=&gt;</span> <span class="s1">'eins'</span><span class="p">,</span> <span class="ss">:two</span> <span class="o">=&gt;</span> <span class="s1">'zwei'</span><span class="p">,</span> <span class="ss">:three</span> <span class="o">=&gt;</span> <span class="s1">'drei'</span> <span class="p">},</span>
  <span class="ss">:en</span> <span class="o">=&gt;</span> <span class="p">{</span> <span class="ss">:one</span> <span class="o">=&gt;</span> <span class="s1">'one'</span><span class="p">,</span> <span class="ss">:two</span> <span class="o">=&gt;</span> <span class="s1">'two'</span><span class="p">,</span> <span class="ss">:three</span> <span class="o">=&gt;</span> <span class="s1">'three'</span> <span class="p">},</span>
  <span class="ss">:es</span> <span class="o">=&gt;</span> <span class="p">{</span> <span class="ss">:one</span> <span class="o">=&gt;</span> <span class="s1">'uno'</span><span class="p">,</span> <span class="ss">:two</span> <span class="o">=&gt;</span> <span class="s1">'dos'</span><span class="p">,</span> <span class="ss">:three</span> <span class="o">=&gt;</span> <span class="s1">'tres'</span> <span class="p">}</span>
<span class="p">}</span>

<span class="n">columns</span> <span class="o">=</span> <span class="n">dictionary</span><span class="p">.</span><span class="nf">values</span><span class="p">.</span><span class="nf">map</span> <span class="p">{</span> <span class="o">|</span><span class="n">words</span><span class="o">|</span> <span class="n">words</span><span class="p">.</span><span class="nf">values</span> <span class="p">}.</span><span class="nf">transpose</span>
<span class="n">widths</span> <span class="o">=</span> <span class="n">columns</span><span class="p">.</span><span class="nf">map</span> <span class="k">do</span> <span class="o">|</span><span class="n">column</span><span class="o">|</span>
  <span class="n">column</span><span class="p">.</span><span class="nf">max_by</span> <span class="p">{</span> <span class="o">|</span><span class="n">word</span><span class="o">|</span> <span class="n">word</span><span class="p">.</span><span class="nf">length</span> <span class="p">}.</span><span class="nf">length</span>
<span class="k">end</span>

<span class="n">lines</span> <span class="o">=</span> <span class="n">languages</span><span class="p">.</span><span class="nf">keys</span><span class="p">.</span><span class="nf">map</span> <span class="k">do</span> <span class="o">|</span><span class="n">key</span><span class="o">|</span>
  <span class="n">words</span> <span class="o">=</span> <span class="n">dictionary</span><span class="p">[</span><span class="n">key</span><span class="p">].</span><span class="nf">values</span>
  <span class="n">words</span> <span class="o">=</span> <span class="n">words</span><span class="p">.</span><span class="nf">map</span><span class="p">.</span><span class="nf">with_index</span> <span class="p">{</span> <span class="o">|</span><span class="n">word</span><span class="p">,</span> <span class="n">ix</span><span class="o">|</span> <span class="n">word</span><span class="p">.</span><span class="nf">ljust</span><span class="p">(</span><span class="n">widths</span><span class="p">[</span><span class="n">ix</span><span class="p">])</span> <span class="p">}</span>
  <span class="s2">"</span><span class="si">#{</span><span class="n">key</span><span class="si">}</span><span class="s2"> </span><span class="si">#{</span><span class="n">words</span><span class="p">.</span><span class="nf">join</span><span class="p">(</span><span class="s1">' '</span><span class="p">)</span><span class="si">}</span><span class="s2">"</span>
<span class="k">end</span>

<span class="nb">puts</span> <span class="n">lines</span><span class="p">.</span><span class="nf">join</span><span class="p">(</span><span class="s2">"</span><span class="se">\n</span><span class="s2">"</span><span class="p">)</span>
</code></pre>
