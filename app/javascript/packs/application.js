require("@rails/ujs").start()
import "bootstrap";
import { initTypedJS } from '../components/typed';
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
// import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';
import {initAutocomplete} from '../plugins/init_autocomplete';
import { initMapbox } from '../plugins/init_mapbox';
initTypedJS();
initMapbox();
initAutocomplete();

