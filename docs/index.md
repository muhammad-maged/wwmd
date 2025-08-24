# WWMD

Welcome to **WWMD (What Would Megz Do)** — a curated collection of troubleshooting notes.

<div class="hero">
  <p>Use the search bar below to quickly find issues by name.</p>
  <div class="search-bar">
    <input type="text" id="issueSearch" placeholder="Search issues..." />
  </div>
</div>

<ul id="issueList">
  <li><a href="sample-issue/">Sample Issue</a></li>
  <li><a href="network-error/">Network Error</a></li>
</ul>

<script>
const searchInput = document.getElementById('issueSearch');
const items = Array.from(document.querySelectorAll('#issueList li'));
function filter() {
  const q = searchInput.value.toLowerCase();
  items.forEach(li => {
    const text = li.textContent.toLowerCase();
    li.style.display = text.includes(q) ? '' : 'none';
  });
  const url = new URL(window.location);
  if (q) {
    url.searchParams.set('q', q);
  } else {
    url.searchParams.delete('q');
  }
  window.history.replaceState({}, '', url);
}
searchInput.addEventListener('input', filter);
const qParam = new URLSearchParams(window.location.search).get('q');
if (qParam) {
  searchInput.value = qParam;
  filter();
}
</script>

<style>
.hero { text-align: center; margin-top: 1rem; }
.search-bar { margin-top: 1rem; }
#issueSearch {
  width: 100%;
  max-width: 400px;
  padding: 0.5rem;
  border: 1px solid #ccc;
  border-radius: 4px;
}
#issueList {
  list-style: none;
  padding-left: 0;
  margin-top: 2rem;
}
#issueList li {
  margin: 0.5rem 0;
}
</style>
