const initCollapse = () => {
  const accordeon = document.getElementById("accordeonQuest");
    if (accordeon) {
      // chopper le quest_level
      //
      let collapse;
      const questLevel = location.search.split('quest_level=')[1];
      // En fonction de quest_level, déterminé le niveau 1, 2 ou 3 (faire des ifs)
      // getElementById de l'élement à ouvir,
      //
      // Ajouter la class `show` à la liste des classe de cet élement
      //
      if (questLevel <= 100) {
        collapse = document.getElementById('collapseOne');
      } else if (questLevel >= 101 && questLevel <= 200) {
        collapse = document.getElementById('collapseTwo');

      } else {
        collapse = document.getElementById('collapseThree');
      }
      collapse.classList.add('show');
    }
};
export { initCollapse };
