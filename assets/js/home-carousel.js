document.addEventListener('DOMContentLoaded', () => {
  const track = document.getElementById('lrr-track');
  const bullets = document.querySelectorAll('.lr-resource-bullet');
  
  if (!track || bullets.length === 0) return;

  bullets.forEach((bullet, index) => {
    bullet.addEventListener('click', () => {
      // Remove active class from all bullets
      bullets.forEach(b => b.classList.remove('active'));
      
      // Add active class to clicked bullet
      bullet.classList.add('active');
      
      // Move track
      track.style.transform = `translateX(-${index * 100}%)`;
    });
  });
});
