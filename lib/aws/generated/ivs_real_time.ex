# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.IVSRealTime do
  @moduledoc """
  ## Introduction

  The Amazon Interactive Video Service (IVS) stage API is REST compatible, using a
  standard HTTP API and an AWS EventBridge event stream for responses.

  JSON is used for both requests and responses, including errors.

  Terminology: The IVS stage API sometimes is referred to as the IVS RealTime API.

  ## Resources

  The following resources contain information about your IVS live stream (see
  [Getting Started with Amazon IVS](https://docs.aws.amazon.com/ivs/latest/userguide/getting-started.html)):

    * **Stage** — A stage is a virtual space where multiple participants
  can exchange audio and video in real time.

  ## Tagging

  A *tag* is a metadata label that you assign to an AWS resource. A tag comprises
  a *key* and a *value*, both set by you. For example, you might set a tag as
  `topic:nature` to label a particular video category. See [Tagging AWS Resources](https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) for
  more information, including restrictions that apply to tags and "Tag naming
  limits and requirements"; Amazon IVS stages has no service-specific constraints
  beyond what is documented there.

  Tags can help you identify and organize your AWS resources. For example, you can
  use the same tag for different resources to indicate that they are related. You
  can also use tags to manage access (see [Access Tags](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html)).

  The Amazon IVS stage API has these tag-related endpoints: `TagResource`,
  `UntagResource`, and `ListTagsForResource`. The following resource supports
  tagging: Stage.

  At most 50 tags can be applied to a resource.

  ## Stages Endpoints

    * `CreateParticipantToken` — Creates an additional token for a
  specified stage. This can be done after stage creation or when tokens expire.

    * `CreateStage` — Creates a new stage (and optionally participant
  tokens).

    * `DeleteStage` — Shuts down and deletes the specified stage
  (disconnecting all participants).

    * `DisconnectParticipant` — Disconnects a specified participant and
  revokes the participant permanently from a specified stage.

    * `GetStage` — Gets information for the specified stage.

    * `ListStages` — Gets summary information about all stages in your
  account, in the AWS region where the API request is processed.

    * `UpdateStage` — Updates a stage’s configuration.

  ## Tags Endpoints

    * `ListTagsForResource` — Gets information about AWS tags for the
  specified ARN.

    * `TagResource` — Adds or updates tags for the AWS resource with the
  specified ARN.

    * `UntagResource` — Removes tags from the resource with the
  specified ARN.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2020-07-14",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "ivsrealtime",
      global?: false,
      protocol: "rest-json",
      service_id: "IVS RealTime",
      signature_version: "v4",
      signing_name: "ivs",
      target_prefix: nil
    }
  end

  @doc """
  Creates an additional token for a specified stage.

  This can be done after stage creation or when tokens expire. Tokens always are
  scoped to the stage for which they are created.

  Encryption keys are owned by Amazon IVS and never used directly by your
  application.
  """
  def create_participant_token(%Client{} = client, input, options \\ []) do
    url_path = "/CreateParticipantToken"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a new stage (and optionally participant tokens).
  """
  def create_stage(%Client{} = client, input, options \\ []) do
    url_path = "/CreateStage"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Shuts down and deletes the specified stage (disconnecting all participants).
  """
  def delete_stage(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteStage"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Disconnects a specified participant and revokes the participant permanently from
  a specified stage.
  """
  def disconnect_participant(%Client{} = client, input, options \\ []) do
    url_path = "/DisconnectParticipant"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Gets information for the specified stage.
  """
  def get_stage(%Client{} = client, input, options \\ []) do
    url_path = "/GetStage"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Gets summary information about all stages in your account, in the AWS region
  where the API request is processed.
  """
  def list_stages(%Client{} = client, input, options \\ []) do
    url_path = "/ListStages"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Gets information about AWS tags for the specified ARN.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Adds or updates tags for the AWS resource with the specified ARN.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Removes tags from the resource with the specified ARN.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a stage’s configuration.
  """
  def update_stage(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateStage"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end
end
