Sidekiq::Extensions.enable_delay!
Sidekiq.default_worker_options['retry'] = 0