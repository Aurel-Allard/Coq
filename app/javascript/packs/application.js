import "bootstrap";

import { anchorScroll } from '../components/anchor_scroll';
import { autocomplete } from '../components/autocomplete';
import { fadeIn } from '../components/fade_in';
import { pricing_updates } from '../components/pricing_updates';
import { DatesSelection } from '../components/DatesSelection';

anchorScroll();
autocomplete();
fadeIn();
pricing_updates();

// Support component names relative to this directory:
var componentRequireContext = require.context("components", true)
var ReactRailsUJS = require("react_ujs")
ReactRailsUJS.useContext(componentRequireContext)
