import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    placeholder: "Change your life",
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
