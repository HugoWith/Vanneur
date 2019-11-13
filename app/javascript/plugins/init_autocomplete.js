import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('van_town');
  if (addressInput) {
    places({ container: addressInput });
  }
  const options = {
      type: 'city'
  }
  const placesInstance = places(options)
};

export { initAutocomplete };