ActiveRecord::Schema.define(version: 0) do

  create_table(:delayed_jobs, force: true) do |t|
    t.integer :priority, default: 0
    t.integer :attempts, default: 0
    t.text :handler
    t.text :last_error
    t.datetime :run_at
    t.datetime :locked_at
    t.datetime :failed_at
    t.string :locked_by
    t.string :queue
    t.timestamps
  end

  create_table(:delayed_workers, force: true) do |t|
    t.string :name
    t.string :version
    t.datetime :last_heartbeat_at
    t.string :host_name
    t.string :label
  end
end
