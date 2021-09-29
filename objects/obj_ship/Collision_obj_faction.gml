// Check if object is part of our faction
if(other.faction == faction) {
	exit;	
} else if(invincible) {
	with(other) {
		event_perform(ev_other, ev_user0);
	}
	exit;
}

event_perform(ev_other, ev_user0);