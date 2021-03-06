###
# Copyright (c) 2015, Upnext Technologies Sp. z o.o.
# All rights reserved.
#
# This source code is licensed under the BSD 3-Clause License found in the
# LICENSE.txt file in the root directory of this source tree.
###

module BeaconClient
  # Simple connection config store
  class Configuration
    attr_accessor :client_id, :client_secret

    def initialize
      load_env
      self.client_id = ENV['BEACON_CLIENT_ID']
      self.client_secret = ENV['BEACON_CLIENT_SECRET']
    end

    def beacon_ctrl_uri
      @beacon_ctrl_uri ||= URI(ENV['BEACON_CTRL_URI'] || 'http://localhost:3000')
    end

    def beacon_ctrl_uri=(uri)
      @beacon_ctrl_uri = URI(uri)
    end

    def beacon_s2s_uri
      @beacon_s2s_uri ||= URI.join(beacon_ctrl_uri, 's2s_api/v1/')
    end

    def beacon_s2s_uri=(uri)
      @beacon_s2s_uri ||= URI.join(beacon_ctrl_uri, uri)
    end

    def user
      @user ||= user_from_env
    end

    def user=(user)
      @user = user
    end

    def debug?
      ENV['BEACON_CLIENT_DEBUG'] == 'true'
    end

    private

    def user_from_env
      OpenStruct.new(
        email: ENV['BEACON_CLIENT_USER_EMAIL'],
        password: ENV['BEACON_CLIENT_USER_PASSWORD'],
      ) if ENV['BEACON_CLIENT_USER_PASSWORD'] && ENV['BEACON_CLIENT_USER_EMAIL']
    end

    def load_env
      return unless File.exists?('./.env')
      File.open('./.env') do |file|
        file.each_line do |line|
          line.strip!
          next if line[0] == '#'
          key, value = line.split('=').map(&:strip)
          ENV[key] = value if ENV[key].nil?
        end
      end
    end
  end
end
