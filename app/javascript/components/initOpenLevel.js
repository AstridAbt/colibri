const initOpenLevel = () => {
  const levelOpen = document.getElementById('container-levels');
  const selectLevel1 = document.getElementById('title-level-one')
  const selectLevel2 = document.getElementById('title-level-two')
  const selectLevel3 = document.getElementById('title-level-three')

  selectLevel1.addEventListener('click', () => {
    levelOpen.classList.remove('level2-open', 'level3-open');
    levelOpen.classList.add('level1-open');
  });

  selectLevel2.addEventListener('click', () => {
    levelOpen.classList.remove('level1-open', 'level3-open');
    levelOpen.classList.add('level2-open');
  });

  selectLevel3.addEventListener('click', () => {
    levelOpen.classList.remove('level1-open', 'level2-open');
    levelOpen.classList.add('level3-open');
  });
};

export { initOpenLevel };
