# frozen_string_literal: true

class TenantController < ApplicationController
  before_action :authenticate_tenant!
end
