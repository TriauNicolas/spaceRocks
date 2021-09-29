if(other.id == creator) exit;

instance_destroy();

// Check if object is part of our faction
if(other.faction == faction) exit;

// Damage object
with(other) {
	event_perform(ev_other, ev_user0);
}