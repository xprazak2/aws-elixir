# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Imagebuilder do
  @moduledoc """
  EC2 Image Builder is a fully managed Amazon Web Services service that makes it
  easier to automate the creation, management, and deployment of customized,
  secure, and up-to-date "golden" server images that are pre-installed and
  pre-configured with software and settings to meet specific IT standards.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2019-12-02",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "imagebuilder",
      global?: false,
      protocol: "rest-json",
      service_id: "imagebuilder",
      signature_version: "v4",
      signing_name: "imagebuilder",
      target_prefix: nil
    }
  end

  @doc """
  CancelImageCreation cancels the creation of Image.

  This operation can only be used on images in a non-terminal state.
  """
  def cancel_image_creation(%Client{} = client, input, options \\ []) do
    url_path = "/CancelImageCreation"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Creates a new component that can be used to build, validate, test, and assess
  your image.

  The component is based on a YAML document that you specify using exactly one of
  the following methods:

    * Inline, using the `data` property in the request body.

    * A URL that points to a YAML document file stored in Amazon S3,
  using the `uri` property in the request body.
  """
  def create_component(%Client{} = client, input, options \\ []) do
    url_path = "/CreateComponent"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Creates a new container recipe.

  Container recipes define how images are configured, tested, and assessed.
  """
  def create_container_recipe(%Client{} = client, input, options \\ []) do
    url_path = "/CreateContainerRecipe"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Creates a new distribution configuration.

  Distribution configurations define and configure the outputs of your pipeline.
  """
  def create_distribution_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/CreateDistributionConfiguration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Creates a new image.

  This request will create a new image along with all of the configured output
  resources defined in the distribution configuration. You must specify exactly
  one recipe for your image, using either a ContainerRecipeArn or an
  ImageRecipeArn.
  """
  def create_image(%Client{} = client, input, options \\ []) do
    url_path = "/CreateImage"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Creates a new image pipeline.

  Image pipelines enable you to automate the creation and distribution of images.
  """
  def create_image_pipeline(%Client{} = client, input, options \\ []) do
    url_path = "/CreateImagePipeline"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Creates a new image recipe.

  Image recipes define how images are configured, tested, and assessed.
  """
  def create_image_recipe(%Client{} = client, input, options \\ []) do
    url_path = "/CreateImageRecipe"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Creates a new infrastructure configuration.

  An infrastructure configuration defines the environment in which your image will
  be built and tested.
  """
  def create_infrastructure_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/CreateInfrastructureConfiguration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Deletes a component build version.
  """
  def delete_component(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteComponent"
    headers = []

    {query_params, input} =
      [
        {"componentBuildVersionArn", "componentBuildVersionArn"}
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
      nil
    )
  end

  @doc """
  Deletes a container recipe.
  """
  def delete_container_recipe(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteContainerRecipe"
    headers = []

    {query_params, input} =
      [
        {"containerRecipeArn", "containerRecipeArn"}
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
      nil
    )
  end

  @doc """
  Deletes a distribution configuration.
  """
  def delete_distribution_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteDistributionConfiguration"
    headers = []

    {query_params, input} =
      [
        {"distributionConfigurationArn", "distributionConfigurationArn"}
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
      nil
    )
  end

  @doc """
  Deletes an Image Builder image resource.

  This does not delete any EC2 AMIs or ECR container images that are created
  during the image build process. You must clean those up separately, using the
  appropriate Amazon EC2 or Amazon ECR console actions, or API or CLI commands.

    * To deregister an EC2 Linux AMI, see [Deregister your Linux AMI](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/deregister-ami.html) in
  the * *Amazon EC2 User Guide* *.

    * To deregister an EC2 Windows AMI, see [Deregister your Windows AMI](https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/deregister-ami.html)
  in the * *Amazon EC2 Windows Guide* *.

    * To delete a container image from Amazon ECR, see [Deleting an image](https://docs.aws.amazon.com/AmazonECR/latest/userguide/delete_image.html)
  in the *Amazon ECR User Guide*.
  """
  def delete_image(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteImage"
    headers = []

    {query_params, input} =
      [
        {"imageBuildVersionArn", "imageBuildVersionArn"}
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
      nil
    )
  end

  @doc """
  Deletes an image pipeline.
  """
  def delete_image_pipeline(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteImagePipeline"
    headers = []

    {query_params, input} =
      [
        {"imagePipelineArn", "imagePipelineArn"}
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
      nil
    )
  end

  @doc """
  Deletes an image recipe.
  """
  def delete_image_recipe(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteImageRecipe"
    headers = []

    {query_params, input} =
      [
        {"imageRecipeArn", "imageRecipeArn"}
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
      nil
    )
  end

  @doc """
  Deletes an infrastructure configuration.
  """
  def delete_infrastructure_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteInfrastructureConfiguration"
    headers = []

    {query_params, input} =
      [
        {"infrastructureConfigurationArn", "infrastructureConfigurationArn"}
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
      nil
    )
  end

  @doc """
  Gets a component object.
  """
  def get_component(%Client{} = client, component_build_version_arn, options \\ []) do
    url_path = "/GetComponent"
    headers = []
    query_params = []

    query_params =
      if !is_nil(component_build_version_arn) do
        [{"componentBuildVersionArn", component_build_version_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Gets a component policy.
  """
  def get_component_policy(%Client{} = client, component_arn, options \\ []) do
    url_path = "/GetComponentPolicy"
    headers = []
    query_params = []

    query_params =
      if !is_nil(component_arn) do
        [{"componentArn", component_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Retrieves a container recipe.
  """
  def get_container_recipe(%Client{} = client, container_recipe_arn, options \\ []) do
    url_path = "/GetContainerRecipe"
    headers = []
    query_params = []

    query_params =
      if !is_nil(container_recipe_arn) do
        [{"containerRecipeArn", container_recipe_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Retrieves the policy for a container recipe.
  """
  def get_container_recipe_policy(%Client{} = client, container_recipe_arn, options \\ []) do
    url_path = "/GetContainerRecipePolicy"
    headers = []
    query_params = []

    query_params =
      if !is_nil(container_recipe_arn) do
        [{"containerRecipeArn", container_recipe_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Gets a distribution configuration.
  """
  def get_distribution_configuration(
        %Client{} = client,
        distribution_configuration_arn,
        options \\ []
      ) do
    url_path = "/GetDistributionConfiguration"
    headers = []
    query_params = []

    query_params =
      if !is_nil(distribution_configuration_arn) do
        [{"distributionConfigurationArn", distribution_configuration_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Gets an image.
  """
  def get_image(%Client{} = client, image_build_version_arn, options \\ []) do
    url_path = "/GetImage"
    headers = []
    query_params = []

    query_params =
      if !is_nil(image_build_version_arn) do
        [{"imageBuildVersionArn", image_build_version_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Gets an image pipeline.
  """
  def get_image_pipeline(%Client{} = client, image_pipeline_arn, options \\ []) do
    url_path = "/GetImagePipeline"
    headers = []
    query_params = []

    query_params =
      if !is_nil(image_pipeline_arn) do
        [{"imagePipelineArn", image_pipeline_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Gets an image policy.
  """
  def get_image_policy(%Client{} = client, image_arn, options \\ []) do
    url_path = "/GetImagePolicy"
    headers = []
    query_params = []

    query_params =
      if !is_nil(image_arn) do
        [{"imageArn", image_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Gets an image recipe.
  """
  def get_image_recipe(%Client{} = client, image_recipe_arn, options \\ []) do
    url_path = "/GetImageRecipe"
    headers = []
    query_params = []

    query_params =
      if !is_nil(image_recipe_arn) do
        [{"imageRecipeArn", image_recipe_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Gets an image recipe policy.
  """
  def get_image_recipe_policy(%Client{} = client, image_recipe_arn, options \\ []) do
    url_path = "/GetImageRecipePolicy"
    headers = []
    query_params = []

    query_params =
      if !is_nil(image_recipe_arn) do
        [{"imageRecipeArn", image_recipe_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Gets an infrastructure configuration.
  """
  def get_infrastructure_configuration(
        %Client{} = client,
        infrastructure_configuration_arn,
        options \\ []
      ) do
    url_path = "/GetInfrastructureConfiguration"
    headers = []
    query_params = []

    query_params =
      if !is_nil(infrastructure_configuration_arn) do
        [{"infrastructureConfigurationArn", infrastructure_configuration_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Get the runtime information that was logged for a specific runtime instance of
  the workflow.
  """
  def get_workflow_execution(%Client{} = client, workflow_execution_id, options \\ []) do
    url_path = "/GetWorkflowExecution"
    headers = []
    query_params = []

    query_params =
      if !is_nil(workflow_execution_id) do
        [{"workflowExecutionId", workflow_execution_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Get the runtime information that was logged for a specific runtime instance of
  the workflow step.
  """
  def get_workflow_step_execution(%Client{} = client, step_execution_id, options \\ []) do
    url_path = "/GetWorkflowStepExecution"
    headers = []
    query_params = []

    query_params =
      if !is_nil(step_execution_id) do
        [{"stepExecutionId", step_execution_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Imports a component and transforms its data into a component document.
  """
  def import_component(%Client{} = client, input, options \\ []) do
    url_path = "/ImportComponent"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  When you export your virtual machine (VM) from its virtualization environment,
  that process creates a set of one or more disk container files that act as
  snapshots of your VM’s environment, settings, and data.

  The Amazon EC2 API
  [ImportImage](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportImage.html) action uses those files to import your VM and create an AMI. To import using the
  CLI command, see
  [import-image](https://docs.aws.amazon.com/cli/latest/reference/ec2/import-image.html)

  You can reference the task ID from the VM import to pull in the AMI that the
  import created as the base image for your Image Builder recipe.
  """
  def import_vm_image(%Client{} = client, input, options \\ []) do
    url_path = "/ImportVmImage"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Returns the list of component build versions for the specified semantic version.

  The semantic version has four nodes: <major>.<minor>.<patch>/<build>. You can
  assign values for the first three, and can filter on all of them.

  **Filtering:** With semantic versioning, you have the flexibility to use
  wildcards (x) to specify the most recent versions or nodes when selecting the
  base image or components for your recipe. When you use a wildcard in any node,
  all nodes to the right of the first wildcard must also be wildcards.
  """
  def list_component_build_versions(%Client{} = client, input, options \\ []) do
    url_path = "/ListComponentBuildVersions"
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
      nil
    )
  end

  @doc """
  Returns the list of components that can be filtered by name, or by using the
  listed `filters` to streamline results.

  Newly created components can take up to two minutes to appear in the
  ListComponents API Results.

  The semantic version has four nodes: <major>.<minor>.<patch>/<build>. You can
  assign values for the first three, and can filter on all of them.

  **Filtering:** With semantic versioning, you have the flexibility to use
  wildcards (x) to specify the most recent versions or nodes when selecting the
  base image or components for your recipe. When you use a wildcard in any node,
  all nodes to the right of the first wildcard must also be wildcards.
  """
  def list_components(%Client{} = client, input, options \\ []) do
    url_path = "/ListComponents"
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
      nil
    )
  end

  @doc """
  Returns a list of container recipes.
  """
  def list_container_recipes(%Client{} = client, input, options \\ []) do
    url_path = "/ListContainerRecipes"
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
      nil
    )
  end

  @doc """
  Returns a list of distribution configurations.
  """
  def list_distribution_configurations(%Client{} = client, input, options \\ []) do
    url_path = "/ListDistributionConfigurations"
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
      nil
    )
  end

  @doc """
  Returns a list of image build versions.
  """
  def list_image_build_versions(%Client{} = client, input, options \\ []) do
    url_path = "/ListImageBuildVersions"
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
      nil
    )
  end

  @doc """
  List the Packages that are associated with an Image Build Version, as determined
  by Amazon Web Services Systems Manager Inventory at build time.
  """
  def list_image_packages(%Client{} = client, input, options \\ []) do
    url_path = "/ListImagePackages"
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
      nil
    )
  end

  @doc """
  Returns a list of images created by the specified pipeline.
  """
  def list_image_pipeline_images(%Client{} = client, input, options \\ []) do
    url_path = "/ListImagePipelineImages"
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
      nil
    )
  end

  @doc """
  Returns a list of image pipelines.
  """
  def list_image_pipelines(%Client{} = client, input, options \\ []) do
    url_path = "/ListImagePipelines"
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
      nil
    )
  end

  @doc """
  Returns a list of image recipes.
  """
  def list_image_recipes(%Client{} = client, input, options \\ []) do
    url_path = "/ListImageRecipes"
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
      nil
    )
  end

  @doc """
  Returns a list of image scan aggregations for your account.

  You can filter by the type of key that Image Builder uses to group results. For
  example, if you want to get a list of findings by severity level for one of your
  pipelines, you might specify your pipeline with the `imagePipelineArn` filter.
  If you don't specify a filter, Image Builder returns an aggregation for your
  account.

  To streamline results, you can use the following filters in your request:

    * `accountId`

    * `imageBuildVersionArn`

    * `imagePipelineArn`

    * `vulnerabilityId`
  """
  def list_image_scan_finding_aggregations(%Client{} = client, input, options \\ []) do
    url_path = "/ListImageScanFindingAggregations"
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
      nil
    )
  end

  @doc """
  Returns a list of image scan findings for your account.
  """
  def list_image_scan_findings(%Client{} = client, input, options \\ []) do
    url_path = "/ListImageScanFindings"
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
      nil
    )
  end

  @doc """
  Returns the list of images that you have access to.

  Newly created images can take up to two minutes to appear in the ListImages API
  Results.
  """
  def list_images(%Client{} = client, input, options \\ []) do
    url_path = "/ListImages"
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
      nil
    )
  end

  @doc """
  Returns a list of infrastructure configurations.
  """
  def list_infrastructure_configurations(%Client{} = client, input, options \\ []) do
    url_path = "/ListInfrastructureConfigurations"
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
      nil
    )
  end

  @doc """
  Returns the list of tags for the specified resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns a list of workflow runtime instance metadata objects for a specific
  image build version.
  """
  def list_workflow_executions(%Client{} = client, input, options \\ []) do
    url_path = "/ListWorkflowExecutions"
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
      nil
    )
  end

  @doc """
  Shows runtime data for each step in a runtime instance of the workflow that you
  specify in the request.
  """
  def list_workflow_step_executions(%Client{} = client, input, options \\ []) do
    url_path = "/ListWorkflowStepExecutions"
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
      nil
    )
  end

  @doc """
  Applies a policy to a component.

  We recommend that you call the RAM API
  [CreateResourceShare](https://docs.aws.amazon.com/ram/latest/APIReference/API_CreateResourceShare.html) to share resources. If you call the Image Builder API `PutComponentPolicy`, you
  must also call the RAM API
  [PromoteResourceShareCreatedFromPolicy](https://docs.aws.amazon.com/ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html)
  in order for the resource to be visible to all principals with whom the resource
  is shared.
  """
  def put_component_policy(%Client{} = client, input, options \\ []) do
    url_path = "/PutComponentPolicy"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Applies a policy to a container image.

  We recommend that you call the RAM API CreateResourceShare
  (https://docs.aws.amazon.com//ram/latest/APIReference/API_CreateResourceShare.html)
  to share resources. If you call the Image Builder API `PutContainerImagePolicy`,
  you must also call the RAM API PromoteResourceShareCreatedFromPolicy
  (https://docs.aws.amazon.com//ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html)
  in order for the resource to be visible to all principals with whom the resource
  is shared.
  """
  def put_container_recipe_policy(%Client{} = client, input, options \\ []) do
    url_path = "/PutContainerRecipePolicy"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Applies a policy to an image.

  We recommend that you call the RAM API
  [CreateResourceShare](https://docs.aws.amazon.com/ram/latest/APIReference/API_CreateResourceShare.html) to share resources. If you call the Image Builder API `PutImagePolicy`, you must
  also call the RAM API
  [PromoteResourceShareCreatedFromPolicy](https://docs.aws.amazon.com/ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html)
  in order for the resource to be visible to all principals with whom the resource
  is shared.
  """
  def put_image_policy(%Client{} = client, input, options \\ []) do
    url_path = "/PutImagePolicy"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Applies a policy to an image recipe.

  We recommend that you call the RAM API
  [CreateResourceShare](https://docs.aws.amazon.com/ram/latest/APIReference/API_CreateResourceShare.html) to share resources. If you call the Image Builder API `PutImageRecipePolicy`,
  you must also call the RAM API
  [PromoteResourceShareCreatedFromPolicy](https://docs.aws.amazon.com/ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html)
  in order for the resource to be visible to all principals with whom the resource
  is shared.
  """
  def put_image_recipe_policy(%Client{} = client, input, options \\ []) do
    url_path = "/PutImageRecipePolicy"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Manually triggers a pipeline to create an image.
  """
  def start_image_pipeline_execution(%Client{} = client, input, options \\ []) do
    url_path = "/StartImagePipelineExecution"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Adds a tag to a resource.
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
      nil
    )
  end

  @doc """
  Removes a tag from a resource.
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
      nil
    )
  end

  @doc """
  Updates a new distribution configuration.

  Distribution configurations define and configure the outputs of your pipeline.
  """
  def update_distribution_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateDistributionConfiguration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Updates an image pipeline.

  Image pipelines enable you to automate the creation and distribution of images.

  UpdateImagePipeline does not support selective updates for the pipeline. You
  must specify all of the required properties in the update request, not just the
  properties that have changed.
  """
  def update_image_pipeline(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateImagePipeline"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Updates a new infrastructure configuration.

  An infrastructure configuration defines the environment in which your image will
  be built and tested.
  """
  def update_infrastructure_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateInfrastructureConfiguration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end
end
