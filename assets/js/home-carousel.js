(function () {
  const btn = document.querySelector('.lr-toggle-resources');
  if (!btn) return;

  const collapsedText = btn.getAttribute('data-text-collapsed') || btn.textContent.trim();
  const expandedText = btn.getAttribute('data-text-expanded') || collapsedText;

  // Capture the extra cards once; they must be tracked even while visible.
  const extraCards = Array.prototype.slice.call(
    document.querySelectorAll('.lr-resource-card-hidden')
  );

  btn.addEventListener('click', function () {
    const expanding = btn.getAttribute('data-state') !== 'expanded';

    extraCards.forEach(function (card) {
      card.classList.toggle('lr-resource-card-hidden', !expanding);
    });

    btn.setAttribute('data-state', expanding ? 'expanded' : 'collapsed');
    btn.textContent = expanding ? expandedText : collapsedText;
  });
})();
