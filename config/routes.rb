CompendiumDemo::Application.routes.draw do
  mount_compendium at: '/reports'

  root to: 'compendium/reports#setup', report_name: 'spending'
end
