# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CleanRooms do
  @moduledoc """
  Welcome to the *AWS Clean Rooms API Reference*.

  AWS Clean Rooms is an AWS service that helps multiple parties to join their data
  together in a secure collaboration workspace. In the collaboration, members who
  can query and receive results can get insights into the collective datasets
  without either party getting access to the other party's raw data.

  To learn more about AWS Clean Rooms concepts, procedures, and best practices,
  see the [AWS Clean Rooms User Guide](https://docs.aws.amazon.com/clean-rooms/latest/userguide/what-is.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2022-02-17",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "cleanrooms",
      global?: false,
      protocol: "rest-json",
      service_id: "CleanRooms",
      signature_version: "v4",
      signing_name: "cleanrooms",
      target_prefix: nil
    }
  end

  @doc """
  Retrieves multiple schemas by their identifiers.
  """
  def batch_get_schema(%Client{} = client, collaboration_identifier, input, options \\ []) do
    url_path = "/collaborations/#{AWS.Util.encode_uri(collaboration_identifier)}/batch-schema"
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
  Creates a new collaboration.
  """
  def create_collaboration(%Client{} = client, input, options \\ []) do
    url_path = "/collaborations"
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
  Creates a new configured table resource.
  """
  def create_configured_table(%Client{} = client, input, options \\ []) do
    url_path = "/configuredTables"
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
  Creates a new analysis rule for a configured table.

  Currently, only one analysis rule can be created for a given configured table.
  """
  def create_configured_table_analysis_rule(
        %Client{} = client,
        configured_table_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/configuredTables/#{AWS.Util.encode_uri(configured_table_identifier)}/analysisRule"

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
  Creates a configured table association.

  A configured table association links a configured table with a collaboration.
  """
  def create_configured_table_association(
        %Client{} = client,
        membership_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/configuredTableAssociations"

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
  Creates a membership for a specific collaboration identifier and joins the
  collaboration.
  """
  def create_membership(%Client{} = client, input, options \\ []) do
    url_path = "/memberships"
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
  Deletes a collaboration.

  It can only be called by the collaboration owner.
  """
  def delete_collaboration(%Client{} = client, collaboration_identifier, input, options \\ []) do
    url_path = "/collaborations/#{AWS.Util.encode_uri(collaboration_identifier)}"
    headers = []
    query_params = []

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
      204
    )
  end

  @doc """
  Deletes a configured table.
  """
  def delete_configured_table(
        %Client{} = client,
        configured_table_identifier,
        input,
        options \\ []
      ) do
    url_path = "/configuredTables/#{AWS.Util.encode_uri(configured_table_identifier)}"
    headers = []
    query_params = []

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
      204
    )
  end

  @doc """
  Deletes a configured table analysis rule.
  """
  def delete_configured_table_analysis_rule(
        %Client{} = client,
        analysis_rule_type,
        configured_table_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/configuredTables/#{AWS.Util.encode_uri(configured_table_identifier)}/analysisRule/#{AWS.Util.encode_uri(analysis_rule_type)}"

    headers = []
    query_params = []

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
      204
    )
  end

  @doc """
  Deletes a configured table association.
  """
  def delete_configured_table_association(
        %Client{} = client,
        configured_table_association_identifier,
        membership_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/configuredTableAssociations/#{AWS.Util.encode_uri(configured_table_association_identifier)}"

    headers = []
    query_params = []

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
      204
    )
  end

  @doc """
  Removes the specified member from a collaboration.

  The removed member is placed in the Removed status and can't interact with the
  collaboration. The removed member's data is inaccessible to active members of
  the collaboration.
  """
  def delete_member(
        %Client{} = client,
        account_id,
        collaboration_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/collaborations/#{AWS.Util.encode_uri(collaboration_identifier)}/member/#{AWS.Util.encode_uri(account_id)}"

    headers = []
    query_params = []

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
      204
    )
  end

  @doc """
  Deletes a specified membership.

  All resources under a membership must be deleted.
  """
  def delete_membership(%Client{} = client, membership_identifier, input, options \\ []) do
    url_path = "/memberships/#{AWS.Util.encode_uri(membership_identifier)}"
    headers = []
    query_params = []

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
      204
    )
  end

  @doc """
  Returns metadata about a collaboration.
  """
  def get_collaboration(%Client{} = client, collaboration_identifier, options \\ []) do
    url_path = "/collaborations/#{AWS.Util.encode_uri(collaboration_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a configured table.
  """
  def get_configured_table(%Client{} = client, configured_table_identifier, options \\ []) do
    url_path = "/configuredTables/#{AWS.Util.encode_uri(configured_table_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a configured table analysis rule.
  """
  def get_configured_table_analysis_rule(
        %Client{} = client,
        analysis_rule_type,
        configured_table_identifier,
        options \\ []
      ) do
    url_path =
      "/configuredTables/#{AWS.Util.encode_uri(configured_table_identifier)}/analysisRule/#{AWS.Util.encode_uri(analysis_rule_type)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a configured table association.
  """
  def get_configured_table_association(
        %Client{} = client,
        configured_table_association_identifier,
        membership_identifier,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/configuredTableAssociations/#{AWS.Util.encode_uri(configured_table_association_identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a specified membership for an identifier.
  """
  def get_membership(%Client{} = client, membership_identifier, options \\ []) do
    url_path = "/memberships/#{AWS.Util.encode_uri(membership_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns query processing metadata.
  """
  def get_protected_query(
        %Client{} = client,
        membership_identifier,
        protected_query_identifier,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/protectedQueries/#{AWS.Util.encode_uri(protected_query_identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the schema for a relation within a collaboration.
  """
  def get_schema(%Client{} = client, collaboration_identifier, name, options \\ []) do
    url_path =
      "/collaborations/#{AWS.Util.encode_uri(collaboration_identifier)}/schemas/#{AWS.Util.encode_uri(name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a schema analysis rule.
  """
  def get_schema_analysis_rule(
        %Client{} = client,
        collaboration_identifier,
        name,
        type,
        options \\ []
      ) do
    url_path =
      "/collaborations/#{AWS.Util.encode_uri(collaboration_identifier)}/schemas/#{AWS.Util.encode_uri(name)}/analysisRule/#{AWS.Util.encode_uri(type)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists collaborations the caller owns, is active in, or has been invited to.
  """
  def list_collaborations(
        %Client{} = client,
        max_results \\ nil,
        member_status \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/collaborations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(member_status) do
        [{"memberStatus", member_status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists configured table associations for a membership.
  """
  def list_configured_table_associations(
        %Client{} = client,
        membership_identifier,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/configuredTableAssociations"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists configured tables.
  """
  def list_configured_tables(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/configuredTables"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all members within a collaboration.
  """
  def list_members(
        %Client{} = client,
        collaboration_identifier,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/collaborations/#{AWS.Util.encode_uri(collaboration_identifier)}/members"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all memberships resources within the caller's account.
  """
  def list_memberships(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/memberships"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists protected queries, sorted by the most recent query.
  """
  def list_protected_queries(
        %Client{} = client,
        membership_identifier,
        max_results \\ nil,
        next_token \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/protectedQueries"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the schemas for relations within a collaboration.
  """
  def list_schemas(
        %Client{} = client,
        collaboration_identifier,
        max_results \\ nil,
        next_token \\ nil,
        schema_type \\ nil,
        options \\ []
      ) do
    url_path = "/collaborations/#{AWS.Util.encode_uri(collaboration_identifier)}/schemas"
    headers = []
    query_params = []

    query_params =
      if !is_nil(schema_type) do
        [{"schemaType", schema_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all of the tags that have been added to a resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Creates a protected query that is started by AWS Clean Rooms.
  """
  def start_protected_query(%Client{} = client, membership_identifier, input, options \\ []) do
    url_path = "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/protectedQueries"
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
  Tags a resource.
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
  Removes a tag or list of tags from a resource.
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
  Updates collaboration metadata and can only be called by the collaboration
  owner.
  """
  def update_collaboration(%Client{} = client, collaboration_identifier, input, options \\ []) do
    url_path = "/collaborations/#{AWS.Util.encode_uri(collaboration_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a configured table.
  """
  def update_configured_table(
        %Client{} = client,
        configured_table_identifier,
        input,
        options \\ []
      ) do
    url_path = "/configuredTables/#{AWS.Util.encode_uri(configured_table_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a configured table analysis rule.
  """
  def update_configured_table_analysis_rule(
        %Client{} = client,
        analysis_rule_type,
        configured_table_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/configuredTables/#{AWS.Util.encode_uri(configured_table_identifier)}/analysisRule/#{AWS.Util.encode_uri(analysis_rule_type)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a configured table association.
  """
  def update_configured_table_association(
        %Client{} = client,
        configured_table_association_identifier,
        membership_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/configuredTableAssociations/#{AWS.Util.encode_uri(configured_table_association_identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a membership.
  """
  def update_membership(%Client{} = client, membership_identifier, input, options \\ []) do
    url_path = "/memberships/#{AWS.Util.encode_uri(membership_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the processing of a currently running query.
  """
  def update_protected_query(
        %Client{} = client,
        membership_identifier,
        protected_query_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/protectedQueries/#{AWS.Util.encode_uri(protected_query_identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end
end
