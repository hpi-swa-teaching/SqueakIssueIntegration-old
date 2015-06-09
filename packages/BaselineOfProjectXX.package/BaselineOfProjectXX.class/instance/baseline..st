baseline
baseline: spec
    <baseline>
    spec
        for: #'common'
        do: [ 
            spec
                package: 'ProjectXX-Core';
                package: 'ProjectXX-Tests' with: [ spec requires: #('default') ].
            spec
                group: 'default' with: #('ProjectXX-Core' 'JSON' 'Widgets');
                group: 'Tests' with: #('ProjectXX-Tests');
                group: 'TravisCI' with: #('Tests').
		spec
			package: 'JSON' with: [ spec repository: 'http://www.squeaksource.com/JSON'];
			project: 'Widgets' with: [ spec
     						className: 'ConfigurationOfWidgets';
     						versionString: #development;
						loads: #('full');
       					repository: 'http://www.hpi.uni-potsdam.de/hirschfeld/squeaksource/MetacelloRepository']
	]