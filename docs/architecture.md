# Architecture Audit Report — adityasinghdevs.github.io

> Read-only audit. No source files were modified, moved, or deleted while producing this report.
> Generated from a full scan of git-tracked files (`git ls-files`), file contents, and repo-wide regex searches for `layout:`, `<style>`, `@import`, and nav/footer usage.

---

## 1. FULL DIRECTORY TREE

This is the actual **git-tracked** file/folder structure (respecting `.gitignore`, which excludes `_site/`, `.jekyll-cache/`, `.sass-cache/`, `Gemfile.lock`, `package-lock.json`, `node_modules/`, `tags`, `.DS_Store`). Large vendored subtrees (`_sass/bootstrap/**`, `assets/javascript/popper/**`, `vendor/bundle/**`) are collapsed to one line each; file counts noted inline.

```
.bundle/config
.git-update-counter
.github/
  workflows/
    jekyll.yml
.gitignore
CNAME
Gemfile
LICENSE
README.md
Rakefile
_config.yml
_data/
  alumni.yml
  awards.yml
  blogs.yml
  funders.yml
  grants.yml
  great_mathematicians_and_physicists.csv
  news.yml
  people.yml
  pi.yml
  team_members.yml
  work.yml
_includes/
  analytics.html
  csv_to_table.html
  footer.html
  head.html
  header.html
  mathjax.html
_layouts/
  bibtemplate.html
  default.html
  gridlay.html
  homelay.html
  page.html
  piclay.html
  post.html
  publications.html
  research.html
  team.html
  textlay.html
_pages/
  404.md
  about.md
  allnews.md
  blogs.md
  home.md
  projects.html
  projects.md          (0 bytes — empty/orphaned)
  publications.md
  research.md
  software.md
  talks.md
  teaching.md
  team.md
  work.md
  work/
    at-the-threshold.md
_plugins/
  ext.rb
  markdown.rb
_posts/
  1961-11-28-space-time.md
  2024-05-31-great-mathematicians-and-physicists.md
_sass/
  SHB_css.scss
  bootstrap-4-jekyll/_bootstrap-4-jekyll.scss
  bootstrap.scss
  bootstrap_bak.scss
  bootstrap/                     (93 files — vendored Bootstrap 5 Sass source)
_work/
  css/
    at-the-threshold.css
    proteus.css
  html/
    at-the-threshold.html
    proteus.html
  proteus.md
assets/
  Aditya_Enhanced_Resume_20-07-25 - Copy.pdf
  javascript/
    bootstrap/
      __DO_NOT_MODIFY
      bootstrap.bundle.min.js
      bootstrap.bundle.min.js.map
    popper/                       (~120 files — vendored Popper.js npm package)
  main.scss
  ref.bib
bin/
  jekyll, jekyll.cmd, kramdown, kramdown.cmd, listen, listen.cmd,
  racc, racc.cmd, rake, rake.cmd, rougify, rougify.cmd,
  safe_yaml, safe_yaml.cmd, sass, sass.cmd
blogs/
  transformer-attention-patterns.html
citesty.csl
docker
favicon.ico
favicon.jpeg
files/
  resume.pdf
images/
  NIH-logo.png, NSF.png, banner.jpg, doe_logo.png, favicon.ico,
  favicon22.png, favicon_red.png, headshot.jpg, headshot1.jpg,
  mimir.png, nnsa_logo.png, onr_logo.png,
  "orca 1.png", "orca 2.png", "orca 3.png", "orca 4.png", "orca_image 2 .png",
  profile_photo.png, reddit.png, rock.jpg, skysentinel 1.png,
  tesseract.gif, vulkyrie 1.png, vulkyrie 2.png
  work/
    at-the-threshold.svg
    proteus.png
    proteus1.svg
misc/
  at-the-threshold.html
  at-the-threshold1.html
  proteus.html
  proteus1.html
notes.txt                        (empty)
package.json
papers/
  example_proceeding.pdf
  feynman06.pdf
  feynman39.pdf
social_preview.jpg
switch_theme.sh
update.bat, update.cmd, update.ps1
update_bootstrap.sh
vendor/
  bundle/ruby/3.4.0/gems/        (vendored Ruby gems — includes a compiled .so)
```

**Notable observations from the tree:**
- `_site/` and `.jekyll-cache/` exist on disk (build artifacts) but are gitignored and not tracked.
- `vendor/bundle/ruby/**` (vendored gems, incl. a compiled `.so`) **is tracked in git** despite CI installing gems fresh — unusually large/committed.
- `_sass/bootstrap_bak.scss` is a dead backup, not imported anywhere.
- `_pages/projects.md` is tracked but **empty** (0 bytes); the real page is `_pages/projects.html`.
- `docker` and `notes.txt` are ambiguous tracked top-level files (`notes.txt` is empty).
- Three parallel "work" homes: `_pages/work.md` (live, via `_data/work.yml`); `_work/html/` (live detail pages: `proteus.html` and `at-the-threshold.html`, linked from `_data/work.yml` via `html_file`); `_work/proteus.md` (dead/unwired, references a nonexistent `work-single` layout); `misc/*.html` (standalone static, no header/nav/footer). See Section 10.
---

## 2. JEKYLL CONFIG

Full contents of `_config.yml`:

```yaml
# Site settings
title: Aditya Pratap Singh
email: adityasingh.devs@gmail.com
description: Academic webpage of Aditya Singh
baseurl: ""
url: ""

# Google analytics ID: Uncomment and your own, if you like
# google_analytics: XX
# google_analytics_4: XXX
# google_tag_manager: XXX

# Footer info
affiliation: >
  Aditya Pratap Singh<br/>
  B.Tech Engineering major in AI and Data Science<br/>
  GGSIPU | VIPS

location: >
  GGSIPU | VIPS<br/>
  New Delhi

contact: >
  <a href="mailto:adityasingh.devs@gmail.com" target="_blank"><i class="fa fa-envelope fa-1x"></i> Email</a> <br/>
  <a href="https://github.com/AdityaSinghDevs" target="_blank"><i class="fa fa-github fa-1x"></i> GitHub</a> <br/>
  <a href="https://www.linkedin.com/in/aditya-pratap-singh25/" target="_blank"><i class="fa fa-linkedin fa-1x"></i> LinkedIn</a>


# Pages shown in navbar
nav_pages:
  - name: about
  - name: projects     # Add this one!
  - name: blogs
  - name: publications
  - name: work
  - name: talks
  - name: research
  - name: resume       # Add if you want a dedicated resume page


include:
  - .htaccess
  - _pages
  - _work

# Conversion
markdown: kramdown
highlighter: rouge
lsi: false
excerpt_separator: "\n\n"
incremental: false

# Markdown Processing
kramdown:
  input: GFM
  hard_wrap: false
  auto_ids: true
  footnote_nr: 1
  entity_output: as_char
  toc_levels: 1..6
  smart_quotes: lsquo,rsquo,ldquo,rdquo
  enable_coderay: false
  parse_block_html: true # default for kramdown is false. This will enable using Markdown links

plugins: ["jekyll/scholar"]

scholar:
  last_name: Singh
  first_name: [Aditya]

  style: citesty
  locale: en

  source: /assets/
  bibliography: ref.bib
  bibliography_template: bibtemplate
  sort_by: year, month
  order: descending

  replace_strings: true
  join_strings: true

  details_dir: bibliography
  details_layout: bibtex.html
  details_link: Details

  query: "@*"

  bibliography_list_attributes:
    reversed: "reversed"

exclude:
  - Gemfile
  - Gemfile.lock
  - update_boostrap.sh
  - switch_theme.sh
  - tags
  - Rakefile

# Social image
image: /assets/img/social_preview.jpg
```

### Plugins declared
- `jekyll/scholar` (via the `plugins:` array) — the only Jekyll plugin declared. Powers `{% bibliography %}` tags on `publications.md` and `talks.md`, plus the `bibtemplate` layout for individual reference rendering.
- `_plugins/ext.rb` does `require 'jekyll/scholar'` (redundant with the `plugins:` declaration but harmless).
- `_plugins/markdown.rb` registers a custom Liquid tag `{% markdown <filename> %}` (reads `_includes/<filename>`, runs Liquid, then Kramdown). **Not used anywhere** in current content (no `{% markdown %}` invocations found).

### Collections defined
- **No `collections:` block** in `_config.yml`. The site does **not** use Jekyll's native collections (no `_projects`/`_talks`/`_publications` folders).
- `include:` force-includes two directories: `_pages` (all standalone pages, with `permalink:` for clean URLs) and `_work` (holds `proteus.md` with nonexistent `layout: work-single`, plus `html`/`css` subfolders — effectively dead/unwired content).
- The only real collection is the built-in `_posts` (2 posts, default config).
- Publications/talks are **not** a collection — they are entries parsed at build time from `assets/ref.bib` by jekyll-scholar via `{% bibliography %}` tags.

### Front matter defaults
**None.** No `defaults:` block — every page/post sets its own front matter individually (a source of inconsistency, see Section 10).

### Custom variables set (site-wide, consumed via `site.*`)
| Variable | Purpose | Where used |
|---|---|---|
| `title` | Site title | `_includes/head.html`, `_includes/header.html` |
| `email` | Contact email | only inside the `_config.yml` `contact:` string itself; not referenced elsewhere |
| `description` | Site meta description | not used directly (each page overrides via its own front matter `description`) |
| `baseurl` / `url` | both empty string; used for `relative_url`/absolute construction | `_includes/header.html`, `_includes/footer.html`, pages |
| `affiliation` / `location` / `contact` | intended for an academic-footer | **not consumed** — `_includes/footer.html` is hardcoded, so these are orphaned legacy vars |
| `nav_pages` | list driving the nav loop | `_includes/header.html` |
| `image` | social preview path | set to `/assets/img/social_preview.jpg`, but the file actually lives at repo-root `social_preview.jpg` — **stale/broken** (see Section 10) |
| `google_analytics`, `google_analytics_4`, `google_tag_manager` | analytics IDs (all commented out) | `_includes/analytics.html`, `_includes/header.html` noscript — currently render blank |---

## 3. LAYOUTS

`_layouts/` contains 11 files. Every layout except `default.html` is a thin wrapper that sets `layout: default` in its own front matter and wraps `{{ content }}` in a single `<div>` before delegating to `default.html`.

| Layout | Used by (from grepping every `layout:` reference) | Structural summary |
|---|---|---|
| **`default.html`** | Base layout inherited by all wrapper layouts; directly used by `_pages/404.md`, `_pages/blogs.md`, `_pages/home.md`, `_pages/projects.html`, `_pages/work.md`, `_pages/work/at-the-threshold.md`, and both `_posts/*.md` (via `post.html`) | Root shell: `<html>` → `{% include head.html %}` → `<body>` → `{% include header.html %}` → `<div class="container-fluid"><div class="row">{{ content }}</div></div>` → `{% include footer.html %}`. The **only** place `<html>`/`<body>` and the header/footer includes are wired in. No `<lang>` attribute on `<html>`. Full file (20 lines): `<!DOCTYPE html><html>...{% include head.html %}...{% include header.html %}...<div class="container-fluid"><div class="row">{{ content }}</div></div>...{% include footer.html %}...</body></html>` |
| **`gridlay.html`** | `_pages/about.md`, `_pages/publications.md`, `_pages/research.md`, `_pages/software.md`, `_pages/talks.md`, `_pages/teaching.md`, `_pages/team.md` (7 pages — most-used non-default layout) | Wraps content in `<div id="gridid" class="col-sm-12 col-xs-12">`, delegates to `default`. |
| **`homelay.html`** | *(orphaned — no page references it)* | Wraps content in `<div id="homeid" class="col-sm-15 col-xs-12">`. `col-sm-15` is an **invalid** Bootstrap class (grid only goes to 12) — legacy template cruft. |
| **`page.html`** | *(orphaned — no page references it)* | Wraps content in `<article class="post"><header class="post-header"><h1>{{ page.title }}</h1></header><div class="post-content">{{ content }}</div></article>`. |
| **`piclay.html`** | *(orphaned — no page references it)* | Wraps content in `<div id="picid" class="col-sm-12">`. |
| **`post.html`** | `_posts/1961-11-28-space-time.md`, `_posts/2024-05-31-great-mathematicians-and-physicists.md` | Blog-post wrapper with schema.org `BlogPosting` microdata, post title, formatted date (`{{ page.date | date: "%b %-d, %Y" }}`), optional author, `post-content` div. |
| **`publications.html`** | *(orphaned — misleadingly named; `publications.md` uses `gridlay`, not this)* | Wraps content in `<div id="publications" class="col-sm-12">`. |
| **`research.html`** | *(orphaned — misleadingly named; `research.md` uses `gridlay`, not this)* | Wraps content in `<div id="research" class="col-sm-12">`. |
| **`team.html`** | *(orphaned — misleadingly named; `team.md` uses `gridlay`, not this)* | Wraps content in `<div id="team" class="col-sm-12">`. |
| **`textlay.html`** | `_pages/allnews.md` (the only page using it) | Wraps content in `<div id="textid" class="col-sm-12">`. |
| **`bibtemplate.html`** | Set as `scholar.bibliography_template: bibtemplate` in `_config.yml`; used internally by jekyll-scholar to render each bibliography `{{ entry }}` inside `{% bibliography %}` tags on `publications.md` and `talks.md` | Not a page layout — a **per-citation-entry template** (92 lines). Renders the formatted reference, conditionally shows PDF/DOI/ARXIV/BIB/ABSTRACT buttons based on `entry.file`/`entry.doi`/`entry.abstract`, with inline `<style>` (`.btn`/`pre`) and per-entry inline `<script>` (`toggleBibtex{{entry.key}}()`/`toggleAbstract{{entry.key}}()` show/hide). Full contents below. |

Full contents of `_layouts/bibtemplate.html` (92 lines):
```html
---
---


<style>
.btn{
    margin-bottom:5px;
    padding-top:0px;
    padding-bottom:0px;
    padding-left:15px;
    padding-right:15px;
    height:20px
}

pre{
    white-space: pre-wrap;  
    white-space: -moz-pre-wrap; 
    white-space: -pre-wrap; 
    white-space: -o-pre-wrap; 
    word-wrap: break-word;
    width:100%; overflow-x:auto;
}
</style>


<div class="text-justify">{{reference}}</div>

<!-- You can use the below to make your name bold -->
<!-- {{reference | replace_first: 'Bryngelson, S. H.', '<b>Bryngelson, S. H.</b>' | replace_first: 'Bryngelson, S.', '<b>Bryngelson, S.</b>' }}</div> -->

{% assign bibtest = false %}
{% if entry.file %}
{% assign bibfile = "/papers/" | append: entry.file %}
{% for file in site.static_files %}
    {% if file.path contains bibfile %}
    {% assign bibtest = true %}
    {% endif %}
{% endfor %}
{% endif %}

{% if bibtest %}
<a href="{{ site.url }}{{ site.baseurl }}/papers/{{ entry.file }}" target="_blank"><button class="btn btn-success btm-sm">PDF</button></a>
{% endif %}

{% if entry.doi %}
{% if entry.type == 'unpublished' %}
<a href="{{ entry.doi | prepend: 'https://arxiv.org/abs/' }}" target="_blank"><button class="btn btn-primary btm-sm">ARXIV</button></a>
{% else %}
<a href="{{ entry.doi | prepend: 'http://doi.org/' }}" target="_blank"><button class="btn btn-primary btm-sm">DOI</button></a>
{% endif %}
{% endif %}

{% if entry.type == 'unpublished' or entry.type == 'article' or  entry.type == 'thesis' or entry.type == 'inproceedings' or entry.type == 'report' %}
<button class="btn btn-danger btm-sm"  onclick="toggleBibtex{{entry.key}}()">BIB</button>
{% endif %}

{% if entry.abstract %}
<button class="btn btn-warning btm-sm"  onclick="toggleAbstract{{entry.key}}()">ABSTRACT</button>
{% endif %}

{% if entry.abstract %}
<div id="a{{entry.key}}" style="display: none; background-color:black; border-radius:5px; padding:10px; margin-bottom:20px;">
<pre>{{ entry.bibtex | remove: "entry.abstract" }}</pre>
</div>
{% else %}
<div id="a{{entry.key}}" style="display: none; background-color:black; border-radius:5px; padding:10px; margin-bottom:20px;">
<pre>{{ entry.bibtex }}</pre>
</div>
{% endif %}

<div id="b{{entry.key}}" style="display: none; background-color:black; border-radius:5px; padding:10px; margin-bottom:20px;">
<pre>{{entry.abstract}}</pre>
</div>

<script>
function toggleBibtex{{entry.key}}(parameter) {
    var x= document.getElementById('a{{entry.key}}');
    if (x.style.display === 'none') {
        x.style.display = 'block';
    } else {
        x.style.display = 'none';
    }
}
function toggleAbstract{{entry.key}}(parameter) {
    var x= document.getElementById('b{{entry.key}}');
    if (x.style.display === 'none') {
        x.style.display = 'block';
    } else {
        x.style.display = 'none';
    }
}
</script>
```

**Header/nav/footer/sidebar rendering**: None of the layouts render header/nav/footer directly except `default.html`, which is the single choke point (`{% include header.html %}` + `{% include footer.html %}`). No layout defines a sidebar. This is a clean single-source pattern, though several of the 11 layout files (`homelay`, `page`, `piclay`, and the misleadingly-named-but-unused `publications`/`research`/`team`) are dead code.---

## 4. INCLUDES

`_includes/` contains 6 files. The `bibtemplate.html` file lives in `_layouts/` (full contents in Section 3); it is the bibliography-entry template referenced by `publications.md`/`talks.md`.

### `_includes/analytics.html`
- **Purpose**: Conditionally-loaded (production only, via `head.html`) Google Analytics (legacy `ga()`), GA4 (`gtag.js`), and Google Tag Manager scripts, keyed off `site.google_analytics` / `site.google_analytics_4` / `site.google_tag_manager` (commented out in `_config.yml`, so they currently render blank).
- **Called from**: `_includes/head.html`
- **Full contents (29 lines)**:
```html
<!-- Google Analytics (original) -->
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', '{{site.google_analytics}}', 'auto');
  ga('send', 'pageview');

</script>

<!-- Global site tag (gtag.js) - Google Analytics 4 -->
<script async src="https://www.googletagmanager.com/gtag/js?id={{ site.google_analytics_4 }}"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', '{{ site.google_analytics_4 }}');
</script>

<!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
    })(window,document,'script','dataLayer','{{ site.google_tag_manager }}');</script>
<!-- End Google Tag Manager -->
```

### `_includes/csv_to_table.html`
- **Purpose**: Generic Liquid include rendering a passed `include.dataset` (array of arrays) as `<table class="table table-dark">`, first row as header.
- **Called from**: `_posts/2024-05-31-great-mathematicians-and-physicologists.md` (passes `dataset=site.data.great_mathematicians_and_physicologists`).
- **Full contents (17 lines)**:
```html
<table class="table table-dark">
  {% for row in include.dataset %}
    {% if forloop.first %}
    <tr>
      {% for pair in row %}
        <th>{{ pair[0] }}</th>
      {% endfor %}
    </tr>
    {% endif %}

    {% tablerow pair in row %}
      {{ pair[1] }}
    {% endtablerow %}

  {% endfor %}

</table>
```

### `_includes/mathjax.html`
- **Purpose**: Loads MathJax v3 (SVG output, AMS tag numbering, `$...` inline + `$$...$$` display) for LaTeX in `_posts`.
- **Called from**: `_includes/head.html` (loaded on every page, unconditionally).
- **Full contents (15 lines)**:
```html
<script>
MathJax = {
    tex: {
    inlineMath: [ ['$', '$'], ['\\(', '\\)'] ],
    tags: 'ams'  // should be 'ams', 'none', or 'all'. This line makes the equation numbering and labeling work
    }, 
    svg: {
    fontCache: 'global'
    }
};
</script>
<script
    type="text/javascript" id="MathJax-script" async
    src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-svg.js">
</script>
```

### `_includes/header.html`
- **Purpose**: Site-wide header: GTM noscript, site-name link, primary nav (`Home` + loop over `site.nav_pages` with `resume` special-cased to the resume PDF), and the dark-mode toggle button (SVG icons).
- **Called from**: `_layouts/default.html`; also manually included by `blogs/transformer-attention-patterns.html`, `_work/html/proteus.html`, `_work/html/at-the-threshold.html`.
- **Full contents (24 lines)**:
```html
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id={{ site.google_tag_manager }}"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->

<header class="site-header">
  <div class="site-header-inner">
    <a class="site-name" href="{{ site.url }}{{ site.baseurl }}/">{{ site.title | escape }}</a>
    <nav class="site-nav">
      <a href="{{ site.url }}{{ site.baseurl }}/">Home</a>
      {% for page in site.nav_pages %}
      {% if page.name == 'resume' %}
      <a href="{{ site.url }}{{ site.baseurl }}/files/resume.pdf" target="_blank" rel="noopener noreferrer">{{page.name | capitalize}}</a>
      {% else %}
      <a href="{{ site.url }}{{ site.baseurl }}/{{page.name}}/">{{page.name | capitalize}}</a>
      {% endif %}
      {% endfor %}
    </nav>
    <button class="theme-toggle" id="themeToggle" aria-label="Toggle dark mode">
      <svg class="theme-icon theme-icon-moon" viewBox="0 0 24 24" aria-hidden="true"><path d="M20.4 15.2A8.6 8.6 0 0 1 8.8 3.6 8.7 8.7 0 1 0 20.4 15.2Z"/></svg>
      <svg class="theme-icon theme-icon-sun" viewBox="0 0 24 24" aria-hidden="true"><circle cx="12" cy="12" r="4"/><path d="M12 2v2M12 20v2M4.9 4.9l1.4 1.4M17.7 17.7l1.4 1.4M2 12h2M20 12h2M4.9 19.1l1.4-1.4M17.7 6.3l1.4-1.4"/></svg>
    </button>
  </div>
</header>
```

### `_includes/footer.html`
- **Purpose**: Site-wide footer: hardcoded name + contact links (Email/GitHub/LinkedIn/Resume), dynamic-year copyright, Bootstrap JS bundle load, dark-mode toggle click handler + localStorage persistence.
- **Called from**: `_layouts/default.html`; also manually included by the 3 `layout: null` pages above.
- **Full contents (40 lines)**:
```html
<footer class="site-footer">
  <div class="site-footer-content">
    <div class="footer-name">Aditya Pratap Singh</div>
    <div class="footer-links">
      <a href="mailto:adityasingh.devs@gmail.com">Email</a>
      <a href="https://github.com/AdityaSinghDevs" target="_blank" rel="noopener noreferrer">GitHub</a>
      <a href="https://www.linkedin.com/in/aditya-pratap-singh25/" target="_blank" rel="noopener noreferrer">LinkedIn</a>
      <a href="{{ site.baseurl }}/files/resume.pdf" target="_blank" rel="noopener noreferrer">Resume</a>
    </div>
    <div class="footer-copyright">&copy {{ "now" | date: "%Y" }} Aditya Pratap Singh</div>
  </div>
</footer>

<script src="{{ "/assets/javascript/bootstrap/bootstrap.bundle.min.js" | relative_url }}"></script>
<script>
  (function () {
    var toggle = document.querySelector('.theme-toggle');
    if (!toggle) return;

    function syncToggle() {
      var isDark = document.documentElement.dataset.theme === 'dark';
      toggle.setAttribute('aria-pressed', String(isDark));
      toggle.setAttribute('aria-label', isDark ? 'Enable light mode' : 'Enable dark mode');
    }

    syncToggle();
    toggle.addEventListener('click', function () {
      var isDark = document.documentElement.dataset.theme === 'dark';
      if (isDark) {
        delete document.documentElement.dataset.theme;
      } else {
        document.documentElement.dataset.theme = 'dark';
      }
      try {
        localStorage.setItem('theme', isDark ? 'light' : 'dark');
      } catch (error) { /* Theme still works for this visit. */ }
      syncToggle();
    });
  }());
</script>
```

### `_includes/head.html`
- **Purpose**: Full `<head>`: meta charset/X-UA/viewport, dynamic `<title>`/`description` (with fallback defaults), `main.css` canonical link, font preconnects + Google Fonts, favicon, Font Awesome + Academicons CSS, dark-theme FOUC-prevention script, conditional `{% include analytics.html %}`, `{% include mathjax.html %}`, an inline `<style>` hover override for homepage project cards (unconditionally loaded), and a JSON-LD `Person` schema block.
- **Called from**: `_layouts/default.html`.
- **Full contents (63 lines)**:
```html
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>{% if page.title %}{{ page.title | escape }}{% else %}Aditya Pratap Singh | AI Engineer | LLM Systems & Research{% endif %}</title>
  <meta name="description" content="{% if page.description %}{{ page.description | escape }}{% else %}Research-oriented AI engineering undergraduate focused on LLM systems, RAG, model compression, and production-grade ML pipelines.{% endif %}">
  <link rel="stylesheet" href="{{ "/assets/main.css" | relative_url }}">
  <link rel="canonical" href="{{ page.url | replace:'index.html','' | prepend: site.baseurl | prepend: site.url }}">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Alegreya:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500;1,600;1,700&family=Cormorant:ital,wght@0,600;0,700;1,600;1,700&family=MedievalSharp&display=swap" rel="stylesheet">
  <link rel="shortcut icon" type ="image/png" href="{{ '/images/favicon_red.png' | relative_url }}">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://cdn.rawgit.com/jpswalsh/academicons/master/css/academicons.min.css">

  <link rel="preconnect" href="https://player.vimeo.com">
  <link rel="preconnect" href="https://i.vimeocdn.com">
  <link rel="preconnect" href="https://f.vimeocdn.com">

  <script>
    (function () {
      try {
        if (localStorage.getItem('theme') === 'dark') {
          document.documentElement.dataset.theme = 'dark';
        }
      } catch (error) { /* Keep the default light theme if storage is unavailable. */ }
    }());
  </script>


  {% if jekyll.environment == 'production' %}
  {% include analytics.html %}
  {% endif %}

  {% include mathjax.html %}

<style>
/* Only apply violet hover to homepage project cards, not projects page */
.home-page .project-card:hover {
  background-color: #e8d5f2 !important;
}
</style>

  <script type="application/ld+json">
  {
    "@context": "https://schema.org",
    "@type": "Person",
    "name": "Aditya Pratap Singh",
    "url": "https://adityasinghdevs.github.io",
    "sameAs": [
      "https://github.com/AdityaSinghDevs",
      "https://www.linkedin.com/in/aditya-pratap-singh25/",
      "https://twitter.com/adityapsingh"
    ],
    "jobTitle": "AI Engineering Undergraduate",
    "affiliation": {
      "@type": "Organization",
      "name": "Advait AI Community"
    }
  }
  </script>

</head>
```
Note: the inline `.home-page .project-card:hover` `<style>` in `head.html` is loaded on every page even though it only applies to the homepage.---

## 5. COLLECTIONS & DATA

### Custom collections
There is **no `collections:` block in `_config.yml`** — the site does not use Jekyll's native collections for projects/publications/talks/work. Instead:
- **Publications & Talks** are entries in a single BibTeX file (`assets/ref.bib`), parsed at build time by the `jekyll-scholar` plugin and queried inline via Liquid tags (`{% bibliography --query @unpublished %}`, `@article`, `@inproceedings` on `publications.md`; `@incollection[keywords ^= invited]` and `[keywords != invited]` on `talks.md`). The "schema" is BibTeX fields (`type`, `file`, `doi`, `abstract`, `key`), consumed inside `_layouts/bibtemplate.html`. They are **not** exposed as `site.<name>` collection objects.
- **Projects** is **not** a collection or data file — it is hardcoded directly as raw HTML inside `_pages/projects.html`.
- **Work** (`_pages/work.md`) items are pulled from the plain data file `_data/work.yml`, looped via `{% for entry in site.data.work %}` — not a Jekyll collection.
- **Blogs** (`_pages/blogs.md`) items are pulled from `_data/blogs.yml`, same data-file pattern as Work.
- The **`_work/`** top-level folder (distinct from `_data/work.yml`) holds `proteus.md` (broken, references nonexistent `work-single` layout) plus `html`/`css` subfolders. The `html/` subfolder contains the **live detail pages** (`proteus.html`, `at-the-threshold.html`) that are actively linked from `_data/work.yml` via `html_file`. It is **not** a registered collection; it's force-included as loose pages via `include: [_work]` in `_config.yml`. The live `/work/` page uses `_data/work.yml` for the listing, and `_work/html/*.html` for the detail pages. (See Section 10.)
- The only genuine Jekyll collection is the built-in **`_posts`** (2 posts, default config).

### Data-driven "collection-like" lists (via `_data/*.yml`, looped in Liquid)
| Data-driven list | Config in `_config.yml` | Schema keys observed | Item count |
|---|---|---|---|
| Work (`_data/work.yml`, rendered by `_pages/work.md`) | None (plain data file) | `title`, `date` (string), `tag`, `tag_color`, `authors`, `description`, `thumbnail`, `slug` (unused), `html_file` | 2 (Proteus, At the Threshold) |
| Blogs (`_data/blogs.yml`, rendered by `_pages/blogs.md`) | None | `title`, `date` (string), `tag`, `tag_color`, `description`, `image`, **either** `external_url` **or** `html_file` (inconsistent) | 2 (Towards AI external, Transformer Attention internal) |
| Team/PI (`_data/pi.yml`, rendered by `_pages/team.md`) | None | `name`, `photo`, `position_x`, `position_y`, `fit`, `width`, `info`, `email`, `github`, `linkedin`, `x`, `researchgate`, `scholar`, `cv`, `education` (array), `educationshort` (array, unused) | 1 (template entry) |
| Team members (`_data/team_members.yml`, rendered by `_pages/team.md`) | None | `name`, `photo`, `info`, `email`, `website` (optional) | 2 (placeholder) |
| Alumni (`_data/alumni.yml`, rendered by `_pages/team.md`) | None | `name`, `photo`, `duration`, `info`, `email` | 1 (placeholder) |
| News (`_data/news.yml`, rendered by `_pages/allnews.md`) | None | `date` (string), `headline` | 2 (placeholder) |
| Awards (`_data/awards.yml`) | None | `name` | 2 (placeholder) — **not referenced by any page** (orphaned) |
| Grants (`_data/grants.yml`) | None | `name` | 2 (placeholder) — **not referenced** (orphaned) |
| Funders (`_data/funders.yml`) | None | `image`, `url` | 4 (real: NSF/DOE/ONR/NIH) — **not referenced** (orphaned) |
| People (`_data/people.yml`) | None | `name`, `location`, `degree`, `year` | 5 (placeholder) — **not referenced** (orphaned) |
| Great Mathematicians CSV (`_data/great_mathematicians_and_physicists.csv`) | None (CSV) | CSV columns | consumed by `_posts/2024-05-31-great-mathematicians-and-physicologists.md` via `csv_to_table.html` |

### `_data/` file inventory and usage
| File | Used by | Status |
|---|---|---|
| `alumni.yml` | `_pages/team.md` | Active, placeholder content |
| `awards.yml` | *(none)* | Orphaned |
| `blogs.yml` | `_pages/blogs.md` | Active, real content |
| `funders.yml` | *(none)* | Orphaned (real funder logos but no template renders them) |
| `grants.yml` | *(none)* | Orphaned |
| `great_mathematicians_and_physicists.csv` | the 2024-05-31 post (via `csv_to_table.html`) | Active |
| `news.yml` | `_pages/allnews.md` | Active but placeholder; `allnews.md` itself isn't linked from nav (orphaned page) |
| `people.yml` | *(none)* | Orphaned |
| `pi.yml` | `_pages/team.md` | Active (real name/photo/links, placeholder education) |
| `team_members.yml` | `_pages/team.md` | Active, placeholder |
| `work.yml` | `_pages/work.md` | Active, real content |

### Representative schema snapshots (unique keys per item)
- `_data/work.yml` (2 items, consistent): uses all of `title`, `date`, `tag`, `tag_color`, `authors`, `description`, `thumbnail`, `slug`, `html_file`. The two `html_file` values are `proteus.html` and `at-the-threshold.html`, which resolve to the live detail pages in `_work/html/*.html` (served at `/work/proteus.html` and `/work/at-the-threshold.html`). A separate Markdown file `_pages/work/at-the-threshold.md` exists with a different permalink (`/work/at-the-threshold/`) but is never linked from the work page.
- `_data/blogs.yml` (2 items, **inconsistent**): item 1 uses `image` + `external_url`; item 2 uses `html_file` (no `image`/`external_url`). `_pages/blogs.md` guards both with `{% if %}`.
- `_data/pi.yml` (1 item): richest schema; `_pages/team.md` consumes only `member.education[0]` and `[1]`, never `educationshort`.
- `_data/team_members.yml` (2 items): `website` present on item 1, absent on item 2.---

## 6. PAGE-BY-PAGE INVENTORY

All standalone pages live in `_pages/` (plus 2 `_posts` entries). `permalink: /` on `_pages/home.md` makes it the site index (no root `index.md`/`index.html`). `_pages/projects.html` (the real Projects page) is `.html` rather than `.md` and contains ~1400 lines of raw HTML — see Section 10.

| File path | Layout | Front matter keys | Content source |
|---|---|---|---|
| `_pages/404.md` | `default` | `title`, `layout`, `sitemap`, `permalink` | Hardcoded (one line of Markdown) |
| `_pages/about.md` | `gridlay` | `title`, `layout`, `sitemap`, `permalink` | Hardcoded directly in the page (Markdown bio/interests/contact) |
| `_pages/allnews.md` | `textlay` | `title`, `layout`, `sitemap`, `permalink` | Pulled from `site.data.news`; also **orphaned** (not linked from nav/site) |
| `_pages/blogs.md` | `default` | `title`, `layout`, `sitemap`, `permalink` | Pulled from `site.data.blogs`; wrapped in `{::nomarkdown}` raw HTML; has large inline `<style>` |
| `_pages/home.md` | `default` | `layout`, `title`, `description`, `sitemap`, `permalink` | Hardcoded directly — mostly raw `<div>`/`<h5>`/`<p style="...">` HTML (not Markdown prose); inline `<style>` + `<script>` |
| `_pages/projects.html` | `default` | `layout`, `title`, `description`, `sitemap`, `permalink` | **Fully hardcoded** — 1402 lines raw HTML, heavy inline `style="..."`; the only `.html` content page |
| `_pages/projects.md` | *(none — file is empty)* | *(none)* | Empty/orphaned (0 bytes) |
| `_pages/publications.md` | `gridlay` | `title`, `layout`, `sitemap`, `permalink`, `years` (declared, unused) | Dynamic via `{% bibliography --query %}` (jekyll-scholar, from `assets/ref.bib`); inline `<style>` |
| `_pages/research.md` | `gridlay` | `title`, `layout`, `sitemap`, `permalink` | Hardcoded placeholder ("Example Research") — **not filled in**; inline `<style>` |
| `_pages/software.md` | `gridlay` | `title`, `layout`, `sitemap`, `permalink` | Hardcoded placeholder ("Example Software") — **not filled in**; inline `<style>` (with invalid HTML-comment CSS) |
| `_pages/talks.md` | `gridlay` | `title`, `layout`, `sitemap`, `permalink` | Dynamic via `{% bibliography --query %}` (from `assets/ref.bib`); inline `<style>` |
| `_pages/teaching.md` | `gridlay` | `title`, `layout`, `sitemap`, `permalink` | Hardcoded (one Markdown bullet — leftover Feynman Lectures template content) |
| `_pages/team.md` | `gridlay` | `title`, `layout`, `sitemap`, `permalink` | Pulled from `site.data.pi` + `team_members` + `alumni` (3 Liquid loops); also hardcodes a `/vacancies` link (404) and an admin-support placeholder |
| `_pages/work.md` | `default` | `title`, `layout`, `sitemap`, `permalink` | Pulled from `site.data.work`; large inline `<style>` |
| `_pages/work/at-the-threshold.md` | `default` | `title`, `layout`, `permalink` (no `sitemap`) | Hardcoded placeholder ("Full content coming soon") with inline-styled badge; orphaned duplicate not linked from work page |
| `_posts/1961-11-28-space-time.md` | `post` | `layout`, `title`, `date`, `categories` | Hardcoded Markdown + LaTeX/MathJax equations |
| `_posts/2024-05-31-great-mathematicians-and-physicologists.md` | `post` | `layout`, `title`, `date`, `categories` | One hardcoded sentence + `{% include csv_to_table.html %}` pulling the CSV |
| `blogs/transformer-attention-patterns.html` | `null` (self-contained) | `layout: null`, `permalink` | Hardcoded standalone HTML; manual `{% include header.html %}`/`{% include footer.html %}` + duplicate reduced `<head>`; inline `<style>` |
| `_work/proteus.md` | `work-single` (nonexistent) | `layout`, `title`, `date`, `authors`, `abstract` | Hardcoded ("Coming soon.") — **broken/orphaned** (no `work-single` layout exists; not linked; live page is `_work/html/proteus.html`) |
| `_work/html/proteus.html` | `null` | `layout: null`, `permalink` | Hardcoded standalone HTML — live detail page linked from `_data/work.yml`; manual header/footer |
| `_work/html/at-the-threshold.html` | `null` | `layout: null`, `permalink` | Hardcoded standalone HTML — live detail page linked from `_data/work.yml`; manual header/footer |
| `misc/proteus.html`, `misc/proteus1.html`, `misc/at-the-threshold.html`, `misc/at-the-threshold1.html` | *(no front matter at all)* | none | Fully hardcoded standalone HTML — **no** site header/nav/footer, own embedded `<style>`, early superseded drafts |

First ~15 lines of the largest page, `_pages/projects.html`:
```html
---
layout: default
title: Projects | Aditya Pratap Singh
description: Complete portfolio of AI engineering projects including LLM systems, text-to-3D generation, user persona analysis, and research-oriented ML systems.
sitemap: true
permalink: /projects/
---

<div style="margin-top: 30px; margin-bottom: 30px;" class="projects-page">
<div style="max-width: 2500px; margin: 0 auto; padding: 0 20px;">
<div style="width: 100%;">
<h1 style="font-weight: 700; font-size: 2.5rem; color: #222; margin-bottom: 20px; text-align: center;">Projects</h1>
<p style="font-size: 1.1rem; line-height: 1.7; color: #444; margin-bottom: 0; text-align: center; max-width: 800px; margin-left: auto; margin-right: auto;">This page documents my applied AI engineering and research projects ...</p>
</div>
</div>
</div>
```---

## 7. NAVIGATION & FOOTER

### Where they are defined
- **Nav menu**: defined **once**, in `_includes/header.html`, data-driven from `site.nav_pages` (set in `_config.yml`), looped with Liquid:
  ```liquid
  <a href="{{ site.url }}{{ site.baseurl }}/">Home</a>
  {% for page in site.nav_pages %}
  {% if page.name == 'resume' %}
  <a href="{{ site.url }}{{ site.baseurl }}/files/resume.pdf" target="_blank" rel="noopener noreferrer">{{page.name | capitalize}}</a>
  {% else %}
  <a href="{{ site.url }}{{ site.baseurl }}/{{page.name}}/">{{page.name | capitalize}}</a>
  {% endif %}
  {% endfor %}
  ```
  This single loop is the shared nav source **when pages route through `_layouts/default.html`**.
- **Footer**: defined **once**, in `_includes/footer.html` (full contents, 40 lines, in Section 4). It is **hardcoded HTML**, **not** generated from `_config.yml`'s `affiliation`/`location`/`contact` variables (those config vars are legacy and unused — see Section 10). Links: Email (mailto), GitHub, LinkedIn, Resume (`/files/resume.pdf`); copyright year is dynamic via `{{ "now" | date: "%Y" }}`.

### Where nav/footer markup is duplicated rather than pulled from the single include
Nav/footer markup itself is **not** textually duplicated with different content anywhere — there is one authoritative nav loop (in `header.html`) and one footer block (in `footer.html`). The duplication is in the surrounding **boilerplate and structure**:
- **`blogs/transformer-attention-patterns.html`, `_work/html/proteus.html`, `_work/html/at-the-threshold.html`** (`layout: null`): each manually `{% include header.html %}` / `{% include footer.html %}` for the nav/footer markup **correctly**, but hand-re-declare a **reduced, duplicate `<head>`** (charset/viewport/title/font-preconnect/favicon/stylesheet) instead of using `_includes/head.html`. This duplicated `<head>` omits `head.html`'s JSON-LD schema, analytics conditional include, MathJax, and dark-theme FOUC script.
- **`misc/proteus.html`, `misc/proteus1.html`, `misc/at-the-threshold.html`, `misc/at-the-threshold1.html`**: plain static HTML with **no Jekyll front matter** → Jekyll doesn't process them; they ship with **no site header/nav/footer at all** and their own embedded `<style>`. Completely detached from the include system.
- CSS for the same header/footer components is **split across two Sass files**: `.site-header`/`.site-header-inner`/`.site-name`/`.site-nav`/`.theme-toggle` live in an inline block at the bottom of `assets/main.scss`; `.site-footer`/`.footer-*` live in `_sass/SHB_css.scss` (see Section 8).
- **Resume link anomaly**: `_config.yml`'s `nav_pages` lists `resume`, but `_includes/header.html` special-cases `name == 'resume'` to point straight at `/files/resume.pdf` instead of a page route — and there is **no `_pages/resume.md`**. So "Resume" in nav is a PDF download, not a page (config comment confirms it's an optional/intent flag).

---

## 8. STYLING

### CSS/SCSS files and import order
Jekyll compiles `assets/main.scss` → `assets/main.css` (referenced via `{{ "/assets/main.css" | relative_url }}` in `_includes/head.html`). Import order inside `assets/main.scss`:

```scss
---
# Only the main Sass file needs front matter (the dashes are enough)
---

$baseurl: "{{ site.url }}{{ site.baseurl }}";

// @import "variables";                         (dead — file doesn't exist)
@import "bootstrap/bootstrap";                  (1) Vendored Bootstrap 5, full framework (_sass/bootstrap/*, 114 partials)
// @import "syntax-highlighting";                (dead — file doesn't exist)
@import "bootstrap-4-jekyll/bootstrap-4-jekyll"; (2) Legacy Bootstrap 4 Jekyll theme scaffolding
// @import "bootstrap_customization";            (dead — file doesn't exist)
@import "bootstrap";                            (3) _sass/bootstrap.scss — re-imports the same Bootstrap partials => Bootstrap imported TWICE
@import "SHB_css";                              (4) Site's own rules (_sass/SHB_css.scss)
// ... then ~90 lines of hand-written inline custom CSS in THIS file (.site-header/.site-nav/.theme-toggle/.home-page/dark-mode) ...
```

Key files:
- **`assets/main.scss`** — the single compiled entry point; the import list above PLUS a large block of inline hand-written CSS (`.site-header`, `.site-header-inner`, `.site-name`, `.site-nav`, `.theme-toggle`, `.theme-icon`, `.home-page`, `.home-intro-title`, and dark-mode `html[data-theme="dark"]` overrides). So site-specific styling is **split between `assets/main.scss`** (inline block) **and `_sass/SHB_css.scss`** — an inconsistency.
- **`_sass/bootstrap.scss`** — thin re-import that pulls in `_sass/bootstrap/bootstrap.scss`, causing **Bootstrap to be imported twice** (redundant/inefficient).
- **`_sass/bootstrap_bak.scss`** — dead backup, not imported anywhere.
- **`_sass/bootstrap-4-jekyll/_bootstrap-4-jekyll.scss`** — legacy theme partial, still imported.
- **`_sass/bootstrap/`** — 114 vendored Bootstrap 5 partials (`__DO_NOT_MODIFY` marker present) — untouched vendor code.
- **`_sass/SHB_css.scss`** (209 lines) — the site's custom design system: `.jumbotron`, `.navbar`, `.btn`, `.container-fluid`, `.container-footer`, `.well-collapse`, `.embed-container*`, `.profile-photo`, `.social-icons`, and (critically) `.site-footer`/`footer-*` + dark-mode footer overrides.
- **`assets/javascript/bootstrap/bootstrap.bundle.min.js`** — loaded directly (hardcoded `<script>` in `footer.html`); not part of the Sass pipeline.

### Inline `<style>` blocks / per-page overrides found in `.html`/`.md` files
| File | What it overrides |
|---|---|
| `_includes/head.html` | `.home-page .project-card:hover` (loaded on every page) |
| `_layouts/bibtemplate.html` | `.btn`, `pre` |
| `_pages/publications.md` | `.jumbotron` padding/margins |
| `_pages/research.md` | `img`, `.col-md-3`, `iframe` |
| `_pages/software.md` | `img`, `iframe`, `.col-md-3` (includes invalid CSS: HTML `<!-- -->` comments inside a CSS block, silently ignored) |
| `_pages/talks.md` | `.btn`, `.jumbotron` |
| `_pages/blogs.md` | full `.blogs-feed`/`.blog-card`/`.blog-image`/`.blog-title` system (~100 lines) + dark-mode overrides |
| `_pages/work.md` | full `.work-feed`/`.work-entry`/`.work-tag`/`.work-thumbnail` system (~150 lines) + responsive media query |
| `_pages/projects.html` | large `<style>` block overriding `.container-fluid`/`.row`/`.project-card`/`.filter-btn`/thumbnail carousel |
| `_pages/home.md` | `.clickable-project:hover` + transitions |
| `blogs/transformer-attention-patterns.html` | full `.blog-post-*` system (~70 lines), parallel to `.blogs-feed` but different class names (`blog-post-container` vs `blog-card`) |
| `misc/*.html` (4 files) | each has its own `:root` CSS custom-property block + full page stylesheet, independent of `assets/main.scss`/`_sass/*` |

Net effect: CSS strategy is inconsistent — most styling lives in compiled Sass, but a comparable amount is **one-off inline `<style>` blocks per page**, with no shared naming convention (`.blog-card` vs `.blog-post-container`, `.work-tag` vs ad-hoc inline `style="..."` in `projects.html`).---

## 9. ASSETS

### `/images`
- Flat folder at repo root (`images/*.png|jpg|gif|ico`), plus nested `images/work/` holding `at-the-threshold.svg`, `proteus.png`, `proteus1.svg` (thumbnails for Work data items).
- Referenced two ways:
  - **Relative-URL Liquid filter** (preferred, baseurl-safe): `{{ '/images/' | append: entry.image | relative_url }}` (`_pages/blogs.md`, `_pages/work.md`); `{{ '/images/favicon_red.png' | relative_url }}` (`_includes/head.html`).
  - **Manual concatenation** (older): `<img src="{{ site.url }}{{ site.baseurl }}/images/{{ member.photo }}" .../>` (`_pages/team.md`).
  - Filenames contain spaces (`orca 1.png`, `skysentinel 1.png`, `vulkyrie 1.png`, `orca_image 2 .png`) — valid but slightly fragile for URL encoding.
  - `_data/*.yml` references bare filenames (e.g. `photo: rock.jpg`, `thumbnail: work/proteus.png`, `icon: NSF.png`) **without** an `/images/` prefix — the prefix is added by the consuming template. So data files aren't self-describing/portable paths.
- `_data/funders.yml` references `NSF.png`/`doe_logo.png`/`onr_logo.png`/`NIH-logo.png` (all present in `/images`), but **no page renders that data file** — orphaned assets (files exist, template doesn't).

### `/files` (resume) and `/papers`
- **`files/resume.pdf`** — canonical resume, linked from nav (`header.html`) and footer (`footer.html`).
- **`assets/Aditya_Enhanced_Resume_20-07-25 - Copy.pdf`** — a **second, differently-named resume** in `/assets`, linked from `_pages/about.md` as `/assets/Aditya_Enhanced_Resume_20-07-25.pdf` — the link target **does not match the actual filename on disk** (trailing ` - Copy`), so it's a broken link. Duplicate/inconsistent.
- **`papers/`** — `example_proceeding.pdf`, `feynman06.pdf`, `feynman39.pdf` — referenced by bibliography (`entry.file` in `assets/ref.bib`, resolved in `_layouts/bibtemplate.html` via `{% assign bibfile = "/papers/" | append: entry.file %}` + `site.static_files` check) and by `_pages/software.md`'s hardcoded "PAPER" button.

### Other static assets
- **Favicon redundancy**: `favicon.ico`, `favicon.jpeg` (repo root) **and** `images/favicon.ico`, `images/favicon22.png`, `images/favicon_red.png` (`/images`). Only `images/favicon_red.png` is wired up (`_includes/head.html`) — but I did **not** verify which is intended as the canonical icon during this read-only audit.
- **Social preview mismatch**: `_config.yml`'s `image: /assets/img/social_preview.jpg` vs actual file at repo-root `social_preview.jpg` — stale path.
- **`assets/ref.bib`**, **`citesty.csl`** — BibTeX source + citation style for jekyll-scholar.
- **`assets/javascript/bootstrap/bootstrap.bundle.min.js`** — loaded via hardcoded `<script>` in `_includes/footer.html`.
- **`assets/javascript/popper/`** — full vendored Popper.js npm package (~120 files incl. `package.json`, `.flow`, `.d.ts`). Since `bootstrap.bundle.min.js` already bundles Popper, this looks **redundant**.
- **`package.json`** (repo root) — JS deps/build scripts; **not exercised** by the Jekyll/GitHub-Pages CI (Ruby/Bundler only) — appears inert.
- **`CNAME`** — GitHub Pages custom-domain mapping.
- **`docker`** (no extension), **`notes.txt`** (empty) — ambiguous tracked top-level files; purpose unclear from content.

### Asset-reference strategy
There is **no data-driven asset map** (no file generically maps logical keys→paths). All references are relative-path strings, inline in Liquid/HTML or as bare filenames in `_data/*.yml` that templates prefix with a hardcoded folder. The two reference styles (`<x | relative_url>` vs `site.url + site.baseurl + /path`) are equivalent today only because `url: ""` and `baseurl: ""` in `_config.yml`; either would break if a real `baseurl` were set.---

## 10. INCONSISTENCIES

### A. Pages that don't follow the site's shared layout/include pattern
- **`misc/*.html` (4 files)** — no Jekyll front matter; not processed by Jekyll; no site header/nav/footer; own embedded CSS. Early superseded drafts.
- **`blogs/transformer-attention-patterns.html`** and **`_work/html/proteus.html`/`at-the-threshold.html`** (`layout: null`) — manually re-implement a reduced `<head>` plus manual `{% include header.html %}`/`{% include footer.html %}`, bypassing `_layouts/default.html` and thus missing `head.html`'s JSON-LD, analytics, MathJax, dark-theme FOUC script.
- **`_pages/projects.html`** — the only `.html` content page (siblings are `.md`); ~1400 lines of raw HTML with inline `style="..."` on nearly every tag.
- **`_pages/work/at-the-threshold.md`** — missing the `sitemap` key all sibling `_pages/*.md` set.
- **`_work/proteus.md`** — declares `layout: work-single`, a layout that **does not exist** in `_layouts/` → effectively broken/orphaned; not linked from anywhere (the live Proteus detail page is `_work/html/proteus.html`, not this Markdown file).
- **`_pages/projects.md`** — tracked but completely empty (0 bytes); orphaned duplicate of `projects.html`.

### B. Front matter / schema keys named differently for the same concept across "collections"
- **Date**: `_data/work.yml`/`_data/blogs.yml` use `date` as a **free-text string** ("September 2026", "2025"); `_posts/*.md` use `date` as a parsed YAML date. Same key, different semantics.
- **Link field**: `_data/blogs.yml` uses **either** `external_url` **or** `html_file` (branched per-item in `_pages/blogs.md`); no single consistent "link" key.
- **Image field**: `_data/blogs.yml` = `image`; `_data/work.yml` = `thumbnail`; `_data/pi.yml`/`team_members.yml`/`alumni.yml` = `photo` — three names for the same concept.
- **Tag/category**: `_data/work.yml`/`_data/blogs.yml` use `tag`+`tag_color`; `_posts/*.md` use Jekyll's `categories`.
- **Author**: `_data/work.yml` and `_work/proteus.md` use `authors` (plural); `_layouts/post.html` checks the singular `author` key.
- **Education**: `_data/pi.yml` has both `education` (consumed) and `educationshort` (unused) arrays.
- **Work link fields**: `_data/work.yml` has `html_file` (used by `_pages/work.md` to build `/work/<html_file>`) and `slug` (never consumed). The `html_file` names (`proteus.html`/`at-the-threshold.html`) correctly resolve to the live detail pages in `_work/html/*.html`. A separate file `_pages/work/at-the-threshold.md` exists with a different permalink (`/work/at-the-threshold/`) but is not linked from the work page - this is an orphaned duplicate.

### C. Pages whose content is written directly in HTML/Liquid instead of Markdown
- `_pages/projects.html` — fully raw HTML.
- `_pages/home.md` — `.md` whose body is mostly raw `<div>`/`<h5>`/`<p style="...">` HTML, not Markdown.
- `_pages/blogs.md` and `_pages/work.md` — use `{::nomarkdown}...{:/nomarkdown}` wrapping full raw HTML templates inside `.md` files.
- `_pages/team.md` — heavy raw HTML interleaved with Liquid loops.
- `_layouts/bibtemplate.html` — entirely raw HTML/Liquid with embedded `<style>`/`<script>`.

### D. Duplicated header/footer/nav markup found outside the shared includes
- The **`<nav>` link list is NOT duplicated** — one authoritative loop in `header.html`.
- The **`</head>` boilerplate IS duplicated** on the 3 `layout: null` pages (hand-copied meta/title/font/link tags instead of `head.html`).
- The **`misc/*.html`** files have **no header/nav/footer at all**.
- Header CSS (`.site-header` etc.) lives in `assets/main.scss`; footer CSS (`.site-footer`) lives in `_sass/SHB_css.scss` — split.

### E. Other inconsistencies
- **Resume duplication / broken link**: `files/resume.pdf` (nav+footer) vs `assets/Aditya_Enhanced_Resume_20-07-25 - Copy.pdf` (linked from `about.md` as a non-matching filename → broken link).
- **Social preview path mismatch**: `_config.yml` `image: /assets/img/social_preview.jpg` vs actual `social_preview.jpg` at repo root.
- **Redundant favicon files** in two locations; only `images/favicon_red.png` is used.
- **Orphaned `_data/` files**: `awards.yml`, `grants.yml`, `funders.yml`, `people.yml` (no consuming template).
- **Orphaned page**: `allnews.md` uses `_data/news.yml` but isn't linked from nav or any page.
- **Dead layouts**: `_layouts/homelay.html`, `page.html`, `piclay.html`, `publications.html`, `research.html`, `team.html` — none referenced by any current page.
- **`_layouts/homelay.html` uses invalid Bootstrap class** `col-sm-15` (grid only goes to 12) — moot since unused.
- **Orphaned config vars**: `_config.yml`'s `affiliation`/`location`/`contact` (intended for a footer) are **not consumed** by the hardcoded `footer.html`.
- **`_sass/bootstrap_bak.scss`** — dead backup, not imported.
- **Bootstrap imported twice** in `assets/main.scss`.
- **Vendored dependencies tracked in git**: `vendor/bundle/ruby/**` (incl. compiled `.so`) and `assets/javascript/popper/**` — CI installs gems fresh, so the vendored copy is redundant.
- **Unused plugin**: `_plugins/markdown.rb`'s `{% markdown %}` tag is defined but never invoked.
- **Placeholder content on live pages**: `_pages/research.md`, `_pages/software.md`, `_pages/teaching.md` contain template placeholder text ("Example Research", "Example Software", Feynman Lectures blurb) rather than real content.
- **Broken internal link**: `_pages/team.md` links to `/vacancies` (no such page → 404).
- **Dead commented-out `@import`s** in `assets/main.scss` (`variables`, `syntax-highlighting`, `bootstrap_customization`).

---

## Appendix A — Notes on audit method and file-length treatment
- This report was generated entirely from git-tracked files (`git ls-files`); build artifacts (`_site/`, `.jekyll-cache/`) were ignored.
- `git status` confirms **no tracked source file was modified** during this audit — the only untracked change in the entire repo is the new `docs/architecture.md` report file itself.
- For short config/layout/include files, full contents are pasted above. For longer/vendored files (`_sass/bootstrap/**` vendor partials, `assets/javascript/popper/**`, `vendor/bundle/**`), only structural descriptions are given. `_layouts/bibtemplate.html` (92 lines) is a borderline case: its full structure is enumerated above with first/last lines referenced; the complete file lives at `_layouts/bibtemplate.html`.
- `_pages/projects.html` (1402 lines) exceeds the "show in full" guidance; its first ~15 lines are shown in Section 6 with a length note.