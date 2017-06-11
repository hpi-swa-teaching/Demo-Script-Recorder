baseline
baseline: spec
    <baseline>
    spec
        for: #common
        do: [ 
        
            spec
				baseline: 'Project12' with: 
					[spec
							repository: 'github://HPI-SWA-Teaching/Morphic-Testing-Framework:master/packages']; 
				baseline: 'Squot' with: 
					[spec
						  repository: 'github://hpi-swa/Squot:master/src'];
				baseline: 'Animations' with: 
					[spec
							repository: 'github://hpi-swa/animations/repository']; 	
				package: 'DRC-Core';
				package: 'DRC-Test' with: [spec requires: #('default')];
				yourself.
	
	        spec
	       	 	group: 'default' with: #('DRC-Core');
				group: 'tests' with: #('DRC-Test' 'Project12' 'Squot')];
				yourself