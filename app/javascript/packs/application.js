import "bootstrap";

import { anchorScroll } from '../components/anchor_scroll';
import { autocomplete } from '../components/autocomplete';
import { fadeIn } from '../components/fade_in';
import { DatesSelection } from '../components/DatesSelection';

anchorScroll();
autocomplete();
fadeIn();

// Support component names relative to this directory:
var componentRequireContext = require.context("components", true)
var ReactRailsUJS = require("react_ujs")
ReactRailsUJS.useContext(componentRequireContext)
