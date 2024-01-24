module ApiExceptions
    APIExceptionError = Class.new(APIExceptionError)
    BadRequestError = Class.new(APIExceptionError)
    UnauthorizedError = Class.new(APIExceptionError)
    ForbiddenError = Class.new(APIExceptionError)
    NotFoundError = Class.new(APIExceptionError)
    MethodNotAllowedError = Class.new(APIExceptionError)
    NotAcceptableError = Class.new(APIExceptionError)
    ConflictError = Class.new(APIExceptionError)
    GoneError = Class.new(APIExceptionError)
    UnprocessableEntityError = Class.new(APIExceptionError)
    TooManyRequestsError = Class.new(APIExceptionError)
end