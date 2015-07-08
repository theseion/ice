system registration
registerForNotifications
	"self registerForNotifications"
	<systemEventRegistration>
	
	SystemAnnouncer uniqueInstance unsubscribe: self uniqueInstance.
	self uniqueInstance registerInterestOnSystemChangesOn: SystemAnnouncer uniqueInstance.