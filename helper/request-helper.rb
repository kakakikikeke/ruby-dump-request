module RequestHelper
  def get_request
    request_info = {
      :body => request.body.read,                 # request body sent by the client (see below)
      :params => params.to_json,                  # request body sent by the client (see below)
      #:sheme => request.scheme,                  # "http"
      #:script_name => request.script_name,       # "/example"
      :path_info => request.path_info,            # "/foo"
      #:port => request.port,                     # 80
      :method => request.request_method,          # "GET"
      :query_string => request.query_string,      # ""
      :content_length => request.content_length,  # length of request.body
      :media_type => request.media_type,          # media type of request.body
      #:host => request.host,                     # "example.com"
      #:get => request.get?,                      # true (similar methods for other verbs)
      :form_data => request.form_data?,           # false
      :headers => request.env.select { |k, v| k.start_with?('HTTP_') },
      #:referer => request.referer,               # the referer of the client or '/'
      #:user_agent => request.user_agent,         # user agent (used by :agent condition)
      #:cookies => request.cookies,               # hash of browser cookies
      #:xhr => request.xhr?,                      # is this an ajax request?
      #:url => request.url,                       # "http://example.com/example/foo"
      #:path => request.path,                     # "/example/foo"
      #:ip => request.ip,                         # client IP address
      #:secure => request.secure?,                # false
      #:env => request.env                        # raw env hash handed in by Rack
    }
    logger.info request_info
    return request_info.to_json
  end
end
