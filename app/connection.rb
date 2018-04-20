require 'active_record'

class Connection
  def self.open_connection
    db_configuration_file = File.join(File.expand_path('..', __FILE__), '..', 'db', 'config.yml')
    db_configuration = YAML.load(File.read(db_configuration_file))

    ActiveRecord::Base.establish_connection(db_configuration["production"])
  end
end
