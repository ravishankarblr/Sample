modules = {
    application {
        resource url:'js/application.js'
    }	
	
	modules = {
		core {
			resource url: 'js/core.js', disposition: 'head'
			resource url: 'js/ui.js'
			resource url: 'css/main.css'
			resource url: 'css/branding.css'
			resource url: 'css/print.css', attrs: [media: 'print']
		}
	
		utils {
			dependsOn 'jquery'
			resource url: 'js/utils.js'
		}
	
		forms {
			dependsOn 'core', 'utils'
	
			resource url: 'css/forms.css'
			resource url: 'js/forms.js'
		}
	}
}