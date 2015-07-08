accessing
baseline: spec 
	<baseline>
	
	spec for: #pharo do: [
		self libGit2: spec.
		self ston: spec.
		
		spec
			package: 'Ice' with: [ spec requires: #('STON' 'LibGit2') ];
			package: 'Ice-Tests' with: [ spec requires: #('Ice') ];
			package: 'Ice-Tests-Mock'.
			
		spec 
			group: 'default' with: #('core' 'tests');
			group: 'core' with: #('Ice');
			group: 'tests' with: #('Ice-Tests' 'Ice-Tests-Mock') ]