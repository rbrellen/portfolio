<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta charset="utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="generator" content="pandoc" />




<title></title>

<script src="graphing_state_population_files/jquery-1.11.3/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link href="graphing_state_population_files/bootstrap-3.3.5/css/bootstrap.min.css" rel="stylesheet" />
<script src="graphing_state_population_files/bootstrap-3.3.5/js/bootstrap.min.js"></script>
<script src="graphing_state_population_files/bootstrap-3.3.5/shim/html5shiv.min.js"></script>
<script src="graphing_state_population_files/bootstrap-3.3.5/shim/respond.min.js"></script>
<script src="graphing_state_population_files/navigation-1.1/tabsets.js"></script>
<link href="graphing_state_population_files/highlightjs-9.12.0/default.css" rel="stylesheet" />
<script src="graphing_state_population_files/highlightjs-9.12.0/highlight.js"></script>

<style type="text/css">code{white-space: pre;}</style>
<style type="text/css">
  pre:not([class]) {
    background-color: white;
  }
</style>
<script type="text/javascript">
if (window.hljs) {
  hljs.configure({languages: []});
  hljs.initHighlightingOnLoad();
  if (document.readyState && document.readyState === "complete") {
    window.setTimeout(function() { hljs.initHighlighting(); }, 0);
  }
}
</script>



<style type="text/css">
h1 {
  font-size: 34px;
}
h1.title {
  font-size: 38px;
}
h2 {
  font-size: 30px;
}
h3 {
  font-size: 24px;
}
h4 {
  font-size: 18px;
}
h5 {
  font-size: 16px;
}
h6 {
  font-size: 12px;
}
.table th:not([align]) {
  text-align: left;
}
</style>




<style type = "text/css">
.main-container {
  max-width: 940px;
  margin-left: auto;
  margin-right: auto;
}
code {
  color: inherit;
  background-color: rgba(0, 0, 0, 0.04);
}
img {
  max-width:100%;
  height: auto;
}
.tabbed-pane {
  padding-top: 12px;
}
.html-widget {
  margin-bottom: 20px;
}
button.code-folding-btn:focus {
  outline: none;
}
summary {
  display: list-item;
}
</style>



<!-- tabsets -->

<style type="text/css">
.tabset-dropdown > .nav-tabs {
  display: inline-table;
  max-height: 500px;
  min-height: 44px;
  overflow-y: auto;
  background: white;
  border: 1px solid #ddd;
  border-radius: 4px;
}

.tabset-dropdown > .nav-tabs > li.active:before {
  content: "";
  font-family: 'Glyphicons Halflings';
  display: inline-block;
  padding: 10px;
  border-right: 1px solid #ddd;
}

.tabset-dropdown > .nav-tabs.nav-tabs-open > li.active:before {
  content: "&#xe258;";
  border: none;
}

.tabset-dropdown > .nav-tabs.nav-tabs-open:before {
  content: "";
  font-family: 'Glyphicons Halflings';
  display: inline-block;
  padding: 10px;
  border-right: 1px solid #ddd;
}

.tabset-dropdown > .nav-tabs > li.active {
  display: block;
}

.tabset-dropdown > .nav-tabs > li > a,
.tabset-dropdown > .nav-tabs > li > a:focus,
.tabset-dropdown > .nav-tabs > li > a:hover {
  border: none;
  display: inline-block;
  border-radius: 4px;
}

.tabset-dropdown > .nav-tabs.nav-tabs-open > li {
  display: block;
  float: none;
}

.tabset-dropdown > .nav-tabs > li {
  display: none;
}
</style>

<script>
$(document).ready(function () {
  window.buildTabsets("TOC");
});

$(document).ready(function () {
  $('.tabset-dropdown > .nav-tabs > li').click(function () {
    $(this).parent().toggleClass('nav-tabs-open')
  });
});
</script>

<!-- code folding -->




</head>

<body>


<div class="container-fluid main-container">




<div class="fluid-row" id="header">




</div>


<div id="graphing-state-populations-by-race" class="section level1">
<h1>Graphing State Populations by Race</h1>
<p>This exploratory analysis will leverage the <a href="https://walkerke.github.io/tidycensus/"><code>tidycensus</code></a> package by <a href="https://www.github.com/walkerke">Kyle Walker</a> and the <a href="https://www.tidyverse.org/"><code>tidyverse</code></a> suite of packages from <a href="https://www.rstudio.com/">RStudio</a>.</p>
<div id="objectives" class="section level2">
<h2>Objectives</h2>
<p>The goals of this analysis are as follows:</p>
<ul>
<li>Demonstrate the ability to use <code>tidyverse</code> functions–especially <code>readr</code> and <code>dplyr</code>–to import, export, and manipulate data.</li>
<li>Demonstrate the ability to use <code>ggplot2</code> functions to visualize data.</li>
<li>Demonstrate the ability to map data both statically and interactively.</li>
</ul>
</div>
<div id="analysis" class="section level2">
<h2>Analysis</h2>
<div id="part-1-setting-up-the-project-and-importing-data" class="section level3">
<h3>Part 1: Setting up the project and importing data</h3>
<p>First, we need to load the required packages for our analysis.</p>
<pre class="r"><code># Load packages
library(tidycensus)
library(tidyverse)</code></pre>
<pre><code>## ── Attaching packages ─────────────────────────────────────────────────────────────────────────────────── tidyverse 1.2.1 ──</code></pre>
<pre><code>## ✔ ggplot2 3.1.0     ✔ purrr   0.2.5
## ✔ tibble  1.4.2     ✔ dplyr   0.7.8
## ✔ tidyr   0.8.1     ✔ stringr 1.3.1
## ✔ readr   1.1.1     ✔ forcats 0.3.0</code></pre>
<pre><code>## ── Conflicts ────────────────────────────────────────────────────────────────────────────────────── tidyverse_conflicts() ──
## ✖ dplyr::filter() masks stats::filter()
## ✖ dplyr::lag()    masks stats::lag()</code></pre>
<pre class="r"><code>library(scales)</code></pre>
<pre><code>## 
## Attaching package: &#39;scales&#39;</code></pre>
<pre><code>## The following object is masked from &#39;package:purrr&#39;:
## 
##     discard</code></pre>
<pre><code>## The following object is masked from &#39;package:readr&#39;:
## 
##     col_factor</code></pre>
<p>If you do not already have a U.S. Census API key, you will need to request one from the U.S. Census Bureau <a href="http://api.census.gov/data/key_signup.html">here</a>.</p>
<p>The following code block checks to see if you have a file called <code>state_populations_by_race</code> stored in your <code>data</code> subdirectory. If you cloned this repository from <a href="https://www.github.com/rbrellen/portfolio">Ryan Brellenthin’s <code>portfolio</code> repository</a>, the subdirectory and data will already be included. If the file exists in the subdirectory, executing the code will read the data set is in as an RDS file and store it as your <code>df</code> variable. If the file does not already exist, executing the code will download population data from the 2010 Census, store it to a <code>df</code> variable, and save it as an RDS object in your <code>data</code> subdirectory.</p>
<pre class="r"><code># Pull the population of each state by race and store as RDS object
if (file.exists(&#39;data/state_populations_by_race&#39;)) {
  df &lt;- readr::read_rds(&#39;data/state_populations_by_race&#39;)
} else {
  list_of_variables = c(&#39;P008003&#39;, &#39;P008004&#39;, &#39;P008005&#39;, &#39;P008006&#39;, &#39;P004001&#39;, &#39;P004002&#39;, &#39;P004003&#39;)
  
  df &lt;- tidycensus::get_decennial(geography = &#39;state&#39;,
                                  year = 2010,
                                  variables = list_of_variables,
                                  output = &#39;wide&#39;,
                                  geometry = TRUE,
                                  summary_var = &#39;P001001&#39;,
                                  cache_table = TRUE)
  readr::write_rds(df, &#39;data/state_populations_by_race&#39;)
  rm(list_of_variables)
}</code></pre>
<p>Note my preference for placing each parameter and argument of the <code>tidycensus::get_decennial</code> function call on a separate line. I do not do this for every function call, but when the function involves a larger number of parameters, I find it helpful to read each one on a clean line.</p>
<p>You should now have a 52 row by 10 column tibble called <code>df</code> variable with the following dimensions and class attributes.</p>
<pre class="r"><code>dim(df)
## [1] 52 11
class(df)
## [1] &quot;sf&quot;         &quot;tbl_df&quot;     &quot;tbl&quot;        &quot;data.frame&quot;</code></pre>
</div>
<div id="part-2-exploring-the-data" class="section level3">
<h3>Part 2: Exploring the data</h3>
<p>Because we are working with a tibble instead of a standard data frame, we can feel confident that our data will print <em>relatively</em> cleanly. Let’s go ahead and print the data frame.</p>
<pre class="r"><code>df
## Simple feature collection with 52 features and 10 fields
## geometry type:  MULTIPOLYGON
## dimension:      XY
## bbox:           xmin: -179.1473 ymin: 17.88481 xmax: 179.7785 ymax: 71.35256
## epsg (SRID):    4269
## proj4string:    +proj=longlat +ellps=GRS80 +towgs84=0,0,0,0,0,0,0 +no_defs
## # A tibble: 52 x 11
##    GEOID NAME  P008003 P008004 P008005 P008006 P004001 P004002 P004003
##    &lt;chr&gt; &lt;chr&gt;   &lt;dbl&gt;   &lt;dbl&gt;   &lt;dbl&gt;   &lt;dbl&gt;   &lt;dbl&gt;   &lt;dbl&gt;   &lt;dbl&gt;
##  1 01    Alab…  3.28e6 1251311   28218   53595  4.78e6  4.59e6  1.86e5
##  2 02    Alas…  4.74e5   23263  104871   38135  7.10e5  6.71e5  3.92e4
##  3 04    Ariz…  4.67e6  259008  296529  176695  6.39e6  4.50e6  1.90e6
##  4 05    Arka…  2.25e6  449895   22248   36102  2.92e6  2.73e6  1.86e5
##  5 06    Cali…  2.15e7 2299072  362801 4861007  3.73e7  2.32e7  1.40e7
##  6 22    Loui…  2.84e6 1452396   30579   70132  4.53e6  4.34e6  1.93e5
##  7 21    Kent…  3.81e6  337520   10120   48930  4.34e6  4.21e6  1.33e5
##  8 08    Colo…  4.09e6  201737   56010  139028  5.03e6  3.99e6  1.04e6
##  9 09    Conn…  2.77e6  362296   11256  135565  3.57e6  3.10e6  4.79e5
## 10 10    Dela…  6.19e5  191814    4181   28549  8.98e5  8.25e5  7.32e4
## # ... with 42 more rows, and 2 more variables: summary_value &lt;dbl&gt;,
## #   geometry &lt;MULTIPOLYGON [°]&gt;</code></pre>
<p>A few observations from this printout of our data:</p>
<ul>
<li>As we saw above when we called the <code>class</code> function, the <code>df</code> object is more than a standard data frame. The main reason for the difference is the inclusion of the <code>geometry</code> field. Each record within this field is actually its own list of coordinates, which will be helpful when it comes time to graph.</li>
<li>The first several rows (<em>geometry type</em> through <em>proj4string</em> provide information about the geometric features of the object that will come in handy during graphing.</li>
<li>Next, we see that, as with our <code>dim</code> function call, our tibble is 52 x 11.</li>
<li>We see the first 9 fields (along with data type) for the first 10 rows of data.</li>
<li>We then see that there are 42 more rows and 2 more fields. Those field names and data types are then printed. While most of the fields represent Census data values, a few are worth calling out:
<ul>
<li><code>summary_var</code> was specified in the original <code>tidycensus::get_decennial</code> function call. We know from that function call that it represents the total population in the state and can be used as a denominator for creating percentages.</li>
<li><code>geometry</code> contains a list of coordinates for each state, as noted above. This list of coordinates allows R (and other mapping software packages) to draw the state boundatries by connecting each of the data points with a line.</li>
</ul></li>
</ul>
<p>Personally, I also enjoy the <code>dplyr::glimpse</code> function since it allows me to see a few sample data points for each field and arranges it in a way in which I don’t have to worry about how many columns are in my data set. Let’s take a look at what our data set looks like using that function.</p>
<pre class="r"><code>dplyr::glimpse(df)
## Observations: 52
## Variables: 11
## $ GEOID         &lt;chr&gt; &quot;01&quot;, &quot;02&quot;, &quot;04&quot;, &quot;05&quot;, &quot;06&quot;, &quot;22&quot;, &quot;21&quot;, &quot;08&quot;, ...
## $ NAME          &lt;chr&gt; &quot;Alabama&quot;, &quot;Alaska&quot;, &quot;Arizona&quot;, &quot;Arkansas&quot;, &quot;Cal...
## $ P008003       &lt;dbl&gt; 3275394, 473576, 4667121, 2245229, 21453934, 283...
## $ P008004       &lt;dbl&gt; 1251311, 23263, 259008, 449895, 2299072, 1452396...
## $ P008005       &lt;dbl&gt; 28218, 104871, 296529, 22248, 362801, 30579, 101...
## $ P008006       &lt;dbl&gt; 53595, 38135, 176695, 36102, 4861007, 70132, 489...
## $ P004001       &lt;dbl&gt; 4779736, 710231, 6392017, 2915918, 37253956, 453...
## $ P004002       &lt;dbl&gt; 4594134, 670982, 4496868, 2729868, 23240237, 434...
## $ P004003       &lt;dbl&gt; 185602, 39249, 1895149, 186050, 14013719, 192560...
## $ summary_value &lt;dbl&gt; 4779736, 710231, 6392017, 2915918, 37253956, 453...
## $ geometry      &lt;MULTIPOLYGON [°]&gt; MULTIPOLYGON (((-85.00237 3..., MUL...</code></pre>
<p>From now on in this analysis, if we need to see our data, we will try to use the <code>dplyr::glimpse</code> function.</p>
</div>
<div id="part-3-manipulating-the-data" class="section level3">
<h3>Part 3: Manipulating the data</h3>
<p>Our data set is still a bit unwieldy, so let’s do some data wrangling to get it a more workable place. Here are some things we will want to do:</p>
<ol style="list-style-type: decimal">
<li>Make human-readable field names for Census variables</li>
<li>Remove unwanted fields</li>
<li>Create fields to represent racial or ethnic groups as a percentage of the population</li>
<li>Change field names to lowercase</li>
</ol>
<div id="make-human-readable-field-names" class="section level4">
<h4>Make human-readable field names</h4>
<p>Using the <code>dplyr::rename</code> function, we can specify which variable we would like to target and how we would like to rename the variable.</p>
<pre class="r"><code>df &lt;- df %&gt;% 
  dplyr::rename(white = P008003,
                black = P008004,
                american_indian = P008005,
                asian = P008006,
                hispanic = P004003,
                total_population = summary_value)</code></pre>
</div>
<div id="remove-unwanted-fields" class="section level4">
<h4>Remove unwanted fields</h4>
<p>As we were going through the renaming process, we realized that some fields from our initial data set are not too meaningful. For example, <em>P004001</em> is identical to the <em>summary_value</em> field–both represent the total state population. We intended to use the <em>summary_value</em> field but did not realize the duplciation, so we can get rid of <em>P004001</em> (which one you choose to get rid of does not actually matter). Also, because we are more interested in the Hispanic population in each state but will not explicitly measure the non-Hispanic population of each state, we can remove <em>P004002</em>. To make these changes, we will use the <code>dplyr::select</code> function.</p>
<pre class="r"><code>df &lt;- df %&gt;% 
  dplyr::select(-P004001, -P004002)</code></pre>
<p>Note that, because we are only passing a couple arguments into the <code>dplyr::select</code> function, I do not find it visually helpful to set each one on a separate line. However, if that were your preference, you could certainly do so.</p>
</div>
<div id="create-fields-to-represent-percentages" class="section level4">
<h4>Create fields to represent percentages</h4>
<p>We can create new fields using the <code>dplyr::mutate</code> function, with simple arithmetic being used to define each new field.</p>
<pre class="r"><code>df &lt;- df %&gt;% 
  dplyr::mutate(pct_white           = white / total_population,
                pct_black           = black / total_population,
                pct_american_indian = american_indian / total_population,
                pct_asian           = asian / total_population,
                pct_hispanic        = hispanic / total_population)</code></pre>
<p>Note that, because the number of spaces do not matter to how the software operates, it is sometimes more aesthetically pleasing and more easily readable to line up each line’s equal sign.</p>
</div>
<div id="change-field-names-to-lowercase" class="section level4">
<h4>Change field names to lowercase</h4>
<p>Sometimes, for the sake of consistency and clean code, you may want to change the format of your field names. In this instance, we would like all of our fields to be lowercase and to adhere to <a href="https://en.wikipedia.org/wiki/Snake_case">“snake case”</a>. That preference means we still need to clean up the variable names for <em>GEOID</em> and <em>NAME</em>.</p>
<pre class="r"><code>df &lt;- df %&gt;% 
  dplyr::rename(geoid = GEOID,
                state = NAME)</code></pre>
<p><em>Hmm…</em>, you might be saying, <em>So we only had two arguments for the <code>dplyr::rename</code> function, but we still decided to split them onto separate lines?</em></p>
<p>Valid point. Although each of these example code blocks is taking place in isolation, when writing code, the general guideline is to choose what you prefer but <em>be consistent!</em></p>
</div>
<div id="bringing-it-all-together" class="section level4">
<h4>Bringing it all together</h4>
<p>The beauty of the <code>tidyverse</code> functions is that, using the <code>%&gt;%</code> (pipe) operator, we can chain things together better than we did in each of the four steps above. Let’s redo our work–but all in one code block. Then, let’s use <code>dplyr::glimpse</code> to see what our new data set looks like.</p>
<pre class="r"><code>df &lt;- df %&gt;% 
  dplyr::select(-P004001, -P004002) %&gt;% 
  dplyr::rename(geoid = GEOID,
                state = NAME,
                white = P008003,
                black = P008004,
                american_indian  = P008005,
                asian = P008006,
                hispanic = P004003,
                total_population = summary_value) %&gt;% 
  dplyr::mutate(pct_white = white / total_population,
                pct_black = black / total_population,
                pct_american_indian = american_indian / total_population,
                pct_asian = asian / total_population,
                pct_hispanic = hispanic / total_population)

glimpse(df)
## Observations: 52
## Variables: 14
## $ geoid               &lt;chr&gt; &quot;01&quot;, &quot;02&quot;, &quot;04&quot;, &quot;05&quot;, &quot;06&quot;, &quot;22&quot;, &quot;21&quot;, ...
## $ state               &lt;chr&gt; &quot;Alabama&quot;, &quot;Alaska&quot;, &quot;Arizona&quot;, &quot;Arkansas&quot;...
## $ white               &lt;dbl&gt; 3275394, 473576, 4667121, 2245229, 2145393...
## $ black               &lt;dbl&gt; 1251311, 23263, 259008, 449895, 2299072, 1...
## $ american_indian     &lt;dbl&gt; 28218, 104871, 296529, 22248, 362801, 3057...
## $ asian               &lt;dbl&gt; 53595, 38135, 176695, 36102, 4861007, 7013...
## $ hispanic            &lt;dbl&gt; 185602, 39249, 1895149, 186050, 14013719, ...
## $ total_population    &lt;dbl&gt; 4779736, 710231, 6392017, 2915918, 3725395...
## $ pct_white           &lt;dbl&gt; 0.6852667, 0.6667915, 0.7301484, 0.7699904...
## $ pct_black           &lt;dbl&gt; 0.261795003, 0.032754132, 0.040520543, 0.1...
## $ pct_american_indian &lt;dbl&gt; 0.005903673, 0.147657593, 0.046390521, 0.0...
## $ pct_asian           &lt;dbl&gt; 0.011212962, 0.053693798, 0.027643074, 0.0...
## $ pct_hispanic        &lt;dbl&gt; 0.03883101, 0.05526230, 0.29648685, 0.0638...
## $ geometry            &lt;MULTIPOLYGON [°]&gt; MULTIPOLYGON (((-85.00237 3.....</code></pre>
<p>Our data set is now 52 x 14 with field names that are much easier to understand without needing to reference a data dictionary.</p>
</div>
</div>
<div id="part-4-visualizing-the-data-using-graphs" class="section level3">
<h3>Part 4: Visualizing the data using graphs</h3>
<p>Let’s start visualizing our data.</p>
<pre class="r"><code>sorted_df &lt;- df %&gt;%
  as.data.frame() %&gt;%
  dplyr::select(state,
                White = white,
                `African American` = black,
                Latino = hispanic,
                `Asian American` = asian) %&gt;%
  dplyr::as_tibble() %&gt;%
  tidyr::gather(key = variable, value = value, -state) %&gt;%
  dplyr::group_by(variable) %&gt;% 
  dplyr::top_n(10, value) %&gt;% 
  dplyr::arrange(variable, desc(value)) %&gt;% 
  dplyr::mutate(order = factor(-1 * row_number())) %&gt;% 
  dplyr::arrange(variable, order)


sorted_df %&gt;%
  ggplot(aes(x = order, y = value)) +
  geom_col(fill = &#39;dark blue&#39;) +
  geom_text(hjust = -0.1, size = 2, aes(label = sprintf(&quot;%s: %s&quot;, state, scales::comma(value))), color = &#39;black&#39;) +
  coord_flip(ylim = c(0, 30000000)) + 
  labs(title = &#39;States with Largest Population of Racial/Ethnic Groups&#39;,
       subtitle = &#39;Top 10 States&#39;,
       x = &#39;State&#39;,
       y = &#39;Population of Each Group&#39;) +
  facet_wrap(~ variable, nrow = 2, scales = &#39;free_y&#39;) +
  theme_classic() +
  theme(axis.text = element_blank(),
        axis.ticks = element_blank())</code></pre>
<p><img src="graphing_state_population_files/figure-html/graph1-1.png" width="672" /></p>
<pre class="r"><code>sorted_df &lt;- df %&gt;%
  as.data.frame() %&gt;%
  dplyr::select(state,
                `% White` = pct_white,
                `% African American` = pct_black,
                `% Latino` = pct_hispanic,
                `% Asian American` = pct_asian) %&gt;%
  dplyr::as_tibble() %&gt;%
  tidyr::gather(key = variable, value = value, -state) %&gt;%
  dplyr::group_by(variable) %&gt;% 
  dplyr::top_n(10, value) %&gt;% 
  dplyr::arrange(variable, desc(value)) %&gt;% 
  dplyr::ungroup() %&gt;% 
  dplyr::mutate(order = factor(-1 * row_number()),
                variable = stringr::str_to_title(variable)) %&gt;% 
  dplyr::arrange(variable, order)


sorted_df %&gt;%
  ggplot(aes(x = order, y = value)) +
  geom_col(fill = &#39;dark blue&#39;) +
  geom_text(hjust = -0.1, size = 2, aes(label = sprintf(&quot;%s: %s&quot;, state, scales::percent(value))), color = &#39;black&#39;) +
  coord_flip(ylim = c(0, 1.3)) + 
  labs(title = &#39;States with Largest Proportions of Racial/Ethnic Groups&#39;,
       subtitle = &#39;Top 10 States&#39;,
       x = &#39;State&#39;,
       y = &#39;% of Population in Each Group&#39;) +
  facet_wrap(~ variable, nrow = 2, scales = &#39;free_y&#39;) +
  theme_classic() +
  theme(axis.text = element_blank(),
        axis.ticks = element_blank())</code></pre>
<p><img src="graphing_state_population_files/figure-html/graph2-1.png" width="672" /></p>
</div>
</div>
</div>




</div>

<script>

// add bootstrap table styles to pandoc tables
function bootstrapStylePandocTables() {
  $('tr.header').parent('thead').parent('table').addClass('table table-condensed');
}
$(document).ready(function () {
  bootstrapStylePandocTables();
});


</script>

<!-- dynamically load mathjax for compatibility with self-contained -->
<script>
  (function () {
    var script = document.createElement("script");
    script.type = "text/javascript";
    script.src  = "https://mathjax.rstudio.com/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML";
    document.getElementsByTagName("head")[0].appendChild(script);
  })();
</script>

</body>
</html>
