---
title: "Blogs"
layout: default
sitemap: false
permalink: /blogs/
---

{::nomarkdown}
<div class="blogs-feed">
  {% for entry in site.data.blogs %}
  <div class="blog-card">
    {% if entry.image %}
    <div class="blog-image">
      <img src="{{ '/images/' | append: entry.image | relative_url }}" alt="{{ entry.title }}">
    </div>
    {% endif %}
    <div class="blog-content">
      <div class="blog-meta">
        <span class="blog-date">{{ entry.date }}</span>
        <span class="blog-tag" style="background-color: {{ entry.tag_color }}; color: #fff;">{{ entry.tag }}</span>
      </div>
      <h3 class="blog-title">
        {% if entry.external_url %}
        <a href="{{ entry.external_url }}" target="_blank" rel="noopener noreferrer">{{ entry.title }}</a>
        {% elsif entry.content_file %}
        <a href="{{ site.baseurl }}/{{ entry.content_file }}">{{ entry.title }}</a>
        {% endif %}
      </h3>
      <p class="blog-description">{{ entry.description }}</p>
    </div>
  </div>
  {% endfor %}
</div>
{:/nomarkdown}

<style>
.blogs-feed {
  max-width: 1200px;
  margin: 0 auto;
  padding: 40px 20px;
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(350px, 1fr));
  gap: 32px;
}

.blog-card {
  background-color: #fff9e6;
  border-radius: 12px;
  overflow: hidden;
  transition: transform 0.2s ease, box-shadow 0.2s ease;
  border: 1px solid #e8e0d0;
}

.blog-card:hover {
  transform: translateY(-4px);
  box-shadow: 0 8px 24px rgba(0, 0, 0, 0.08);
}

.blog-image {
  width: 100%;
  height: 200px;
  overflow: hidden;
  background-color: #f5f0e0;
}

.blog-image img {
  width: 100%;
  height: 100%;
  object-fit: cover;
}

.blog-content {
  padding: 24px;
}

.blog-meta {
  display: flex;
  align-items: center;
  gap: 12px;
  margin-bottom: 12px;
}

.blog-date {
  font-size: 0.9rem;
  color: #6c757d;
  font-family: 'Alegreya', Georgia, 'Times New Roman', serif;
}

.blog-tag {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  font-size: 0.7rem;
  font-weight: 600;
  padding: 4px 10px;
  border-radius: 4px;
  letter-spacing: 0.5px;
  text-transform: uppercase;
  white-space: nowrap;
}

.blog-title {
  font-size: 1.25rem;
  font-weight: 700;
  line-height: 1.3;
  margin-bottom: 12px;
  font-family: 'Alegreya', Georgia, 'Times New Roman', serif;
}

.blog-title a {
  color: #000;
  text-decoration: none;
  transition: color 0.2s ease;
}

.blog-title a:hover {
  color: #b5560c;
}

.blog-description {
  font-size: 1rem;
  line-height: 1.6;
  color: #495057;
  margin-bottom: 0;
  font-family: 'Alegreya', Georgia, 'Times New Roman', serif;
}

@media (max-width: 768px) {
  .blogs-feed {
    grid-template-columns: 1fr;
    padding: 20px 16px;
  }
}

html[data-theme="dark"] .blog-card {
  background-color: #242424;
  border-color: #484848;
}

html[data-theme="dark"] .blog-title a {
  color: #fff;
}

html[data-theme="dark"] .blog-title a:hover {
  color: #f6ad3c;
}

html[data-theme="dark"] .blog-description {
  color: #a8a89c;
}

html[data-theme="dark"] .blog-date {
  color: #888;
}

html[data-theme="dark"] .blog-image {
  background-color: #333;
}
</style>
