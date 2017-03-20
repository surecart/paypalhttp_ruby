module BraintreeHttp
  class ServiceIOError < IOError
    attr_accessor :status_code, :result, :headers
    def initialize(status_code, result, headers)
      @status_code = status_code
      @result = result
      @headers = headers
    end
  end
end
