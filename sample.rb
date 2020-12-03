require "slack-notify"
require 'clockwork'
require 'dotenv'
Dotenv.load

require 'active_support/time'

module Clockwork
  every(10.seconds,'test') do
    sample = SlackNotify::Client.new(webhook_url: ENV['WEBHOOK'])
    sample.notify("はじめまして")
  end
end
