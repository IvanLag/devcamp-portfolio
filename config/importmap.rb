# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
# pin "jquery", to: "https://ga.jspm.io/npm:jquery@3.7.1/dist/jquery.js"

# pin "popper", to: 'popper.js', preload: true

# pin "gritter", to: 'gritter.js', preload: true

# pin "bootstrap", to: 'bootstrap.min.js', preload: true	
# pin "@nathanvda/cocoon", to: "https://ga.jspm.io/npm:@nathanvda/cocoon@1.2.14/cocoon.js"
