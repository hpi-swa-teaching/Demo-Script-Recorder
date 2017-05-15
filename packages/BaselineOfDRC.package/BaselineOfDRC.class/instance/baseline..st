baseline
baseline: spec
    <baseline>
    spec
        for: #common
        do: [ 
        
            spec
				baseline: 'MTFUITest' with: 
					[spec
							loads: #('tests');
							repository: 'github://HPI-SWA-Teaching/Morphic-Testing-Framework:master/packages']; 
				package: 'DRC-Core';
				package: 'DRC-Test' with: [spec requires: #('default')];
				yourself.
	
	        spec
	       	 	group: 'default' with: #('DRC-Core');
				group: 'tests' with: #('DRC-Test')];
				yourself