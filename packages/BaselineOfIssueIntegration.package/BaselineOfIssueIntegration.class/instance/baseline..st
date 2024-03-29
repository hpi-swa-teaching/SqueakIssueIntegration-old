baseline
baseline: spec
    <baseline>
    spec
        for: #common
        do: [ 
		spec package: 'JSON' with: [ spec repository: 'http://www.squeaksource.com/JSON' ].
		spec configuration: 'FFI' with: [ spec repository: 'http://www.squeaksource.com/MetacelloRepository' ].
		spec package: 'Applescript-Core' with: [ spec repository: 'http://www.squeaksource.com/Applescript' ].
		spec configuration: 'ExternalWebBrowser' with: [ spec repository: 'http://www.squeaksource.com/MetacelloRepository' ].
		spec package: 'Icons' with: [ spec repository: 'http://www.hpi.uni-potsdam.de/hirschfeld/squeaksource/SwaUtilities' ].
		spec baseline: 'Signals' with: [ spec repository: 'github://marceltaeumel/signals:master/repository' ].
		spec baseline: 'Widgets' with: [	spec repository: 'github://hpi-swa/widgets:master/repository' ].
            spec
                package: 'IssueIntegration-Core' with: [ spec requires: #('JSON' 'FFI' 'Applescript-Core' 'ExternalWebBrowser') ];
                package: 'IssueIntegration-Tests' with: [ spec requires: #('IssueIntegration-Core') ];
	 	    package: 'IssueIntegration-UI' with: [ spec requires: #('IssueIntegration-Core' 'Icons' 'Signals' 'Widgets') ].
            spec
                group: 'default' with: #('IssueIntegration-UI');
		    group: 'Core' with: #('IssueIntegration-Core');
                group: 'Tests' with: #('IssueIntegration-Tests')
	  ]
