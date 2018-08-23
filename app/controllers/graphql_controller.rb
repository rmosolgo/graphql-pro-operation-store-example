class GraphqlController < ApplicationController
  skip_before_action :verify_authenticity_token

  def query
    p params
    query_str = params[:query]
    variables = params[:variables].presence || {}
    context = {
      operation_id: params[:operation_id]
    }
    render json: AppSchema.execute(
      query_str,
      variables: variables,
      context: context,
    )
  end
end
