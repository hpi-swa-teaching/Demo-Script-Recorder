baseline
baseline: spec
    <baseline>
    spec
        for: #common
        do: [ 
            spec
			package: 'DRC-Core';
			package: 'DRC-Test' with: [spec requires: #('default')];
			yourself.
            spec
			group: 'default' with: #('DRC-Core');
			group: 'tests' with: #('DRC-Test')];
			yourself