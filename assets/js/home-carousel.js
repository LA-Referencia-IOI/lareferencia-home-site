(function () {
  const btn = document.querySelector('.lr-toggle-resources');
  if (!btn) return;

  const collapsedText = btn.getAttribute('data-text-collapsed') || btn.textContent.trim();
  const expandedText = btn.getAttribute('data-text-expanded') || collapsedText;

  btn.addEventListener('click', function () {
    const hidden = document.querySelectorAll('.lr-resource-card-hidden');
    const expanding = btn.getAttribute('data-state') !== 'expanded';

    hidden.forEach(function (card) {
      card.classList.toggle('lr-resource-card-hidden');
    });

    btn.setAttribute('data-state', expanding ? 'expanded' : 'collapsed');
    btn.textContent = expanding ? expandedText : collapsedText;
  });
})();