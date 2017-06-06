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
				package: 'DRC-Core';
				package: 'DRC-Test' with: [spec requires: #('default')];
				package: 'FS-Core'; with: [spec requires: #('default')];
				yourself.
	
	        spec
	       	 	group: 'default' with: #('DRC-Core');
				group: 'tests' with: #('DRC-Test' 'Project12' 'FS-Core')];
				yourself