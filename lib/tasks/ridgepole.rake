namespace :ridgepole do
    def rails_env
        ENV.fetch('RAILS_ENV', 'development')
    end

    desc 'apply schema definitions'
    task :apply do
        sh 'ridgepole', '--config', 'config/database.yml', '--env', rails_env, '--apply', '--file', 'db/schema/sample_app/Schemafile'
    end
end