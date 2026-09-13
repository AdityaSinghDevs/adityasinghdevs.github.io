---
title: "Work"
layout: default
sitemap: false
permalink: /work/
---

{::nomarkdown}
<div class="work-feed">
  {% for entry in site.data.work %}
  <div class="work-entry">
    <div class="work-main">
      <div class="work-left-col">
        <div class="work-date">{{ entry.date }}</div>
        <div class="work-tag {% if entry.tag_style == 'filled' %}work-tag-filled{% elsif entry.tag_style == 'orange' %}work-tag-orange{% else %}work-tag-outline{% endif %}">{{ entry.tag }}</div>
      </div>
      <div class="work-right-col">
        <div class="work-title">
          <a href="{{ site.url }}{{ site.baseurl }}/misc/{{ entry.slug }}.html">{{ entry.title }}</a>
        </div>
        <div class="work-authors">{{ entry.authors }}</div>
        <p class="work-description">{{ entry.description }}</p>
      </div>
    </div>
    <div class="work-thumbnail-wrapper">
      {% if entry.thumbnail %}
      <img src="{{ '/images/' | append: entry.thumbnail | relative_url }}" alt="{{ entry.title }}" class="work-thumbnail">
      {% endif %}
    </div>
  </div>
  {% endfor %}
</div>
{:/nomarkdown}

<style>
.work-feed {
  max-width: 900px;
  margin: 0 auto;
  padding: 40px 10px;
}

.work-entry {
  display: flex;
  align-items: center;
  gap: 40px;
  padding: 32px 0;
  border-bottom: 1px solid #d0d0d0;
}

.work-entry:last-child {
  border-bottom: none;
}

.work-main {
  flex: 0 0 58%;
  display: flex;
  gap: 20px;
}

.work-left-col {
  flex: 0 0 140px;
  display: flex;
  flex-direction: column;
  gap: 8px;
  margin-top: 8px;
}

.work-right-col {
  flex: 1;
  display: flex;
  flex-direction: column;
}

.work-title {
  font-size: 1.5rem;
  font-weight: 700;
  line-height: 1.3;
  margin-bottom: 6px;
}

.work-title a {
  color: #000;
  text-decoration: none;
  transition: color 0.2s ease;
}

.work-title a:hover {
  color: #495057;
}

.work-thumbnail-wrapper {
  flex: 0 0 42%;
  display: flex;
  justify-content: center;
  align-items: center;
}

.work-thumbnail {
  max-width: 100%;
  height: auto;
  border-radius: 8px;
  max-height: 350px;
  width: auto;
  transform: scale(1.1);
}

.work-date {
  font-size: 1rem;
  color: #6c757d;
  font-family: 'Alegreya', Georgia, 'Times New Roman', serif;
}

.work-tag {
  display: inline-block;
  font-size: 0.75rem;
  font-weight: 600;
  padding: 4px 10px;
  border-radius: 3px;
  letter-spacing: 0.5px;
  text-transform: uppercase;
}

.work-tag-filled {
  background-color: #2c3e50;
  color: #fff;
  border: none;
}

.work-tag-orange {
  background-color: #3e2404;
  color: #fff;
  border: none;
}

.work-tag-outline {
  background-color: transparent;
  color: #2c3e50;
  border: 1px solid #2c3e50;
}

.work-authors {
  font-size: 0.85rem;
  color: #6c757d;
  margin-bottom: 12px;
  font-family: 'Alegreya', Georgia, 'Times New Roman', serif;
}

.work-description {
  font-size: 1.15rem;
  line-height: 1.6;
  color: #495057;
  margin-bottom: 0;
  font-family: 'Alegreya', Georgia, 'Times New Roman', serif;
}

@media (max-width: 768px) {
  .work-entry {
    flex-direction: column;
    align-items: flex-start;
    gap: 20px;
  }
  
  .work-main {
    flex-direction: column;
    gap: 15px;
  }
  
  .work-left-col {
    flex-direction: row;
    align-items: center;
    gap: 10px;
  }
  
  .work-thumbnail-wrapper {
    flex: 1;
    width: 100%;
  }
}
</style>
