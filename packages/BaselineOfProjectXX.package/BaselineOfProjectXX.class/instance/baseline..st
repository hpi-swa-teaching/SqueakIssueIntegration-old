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
			package: 'Signals' with: [
				spec repository: 'github://marceltaeumel/signals:master/repository'];
			package: 'Widgets' with: [
				spec repository: 'github://hpi-swa/widgets:master/repository']
	]