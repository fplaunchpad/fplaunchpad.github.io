// Add anchor links to headings
document.addEventListener('DOMContentLoaded', function() {
  const headings = document.querySelectorAll('h1[id], h2[id], h3[id], h4[id], h5[id], h6[id]');
  
  headings.forEach(function(heading) {
    const anchor = document.createElement('a');
    anchor.className = 'anchor-link';
    anchor.href = '#' + heading.id;
    anchor.textContent = '#';
    anchor.setAttribute('aria-label', 'Link to ' + heading.textContent);
    heading.insertBefore(anchor, heading.firstChild);
  });
});
