import Typed from 'typed.js';

const initTypedJS = () => {
  const span = document.querySelector('#banner-typed-text');

  if (span) {
    new Typed('#banner-typed-text', {
      strings: ['Les meilleurs van(nes)^1000', "Sans se VANter !"],
      typeSpeed: 50,
      loop: true
    });
  }
}

export { initTypedJS };
