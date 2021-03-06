# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.SQLAdmin.V1beta4.Model.BackupRun do
  @moduledoc """
  A database instance backup run resource.

  ## Attributes

  - description (String): The description of this run, only applicable to on-demand backups. Defaults to: `null`.
  - endTime (DateTime): The time the backup operation completed in UTC timezone in RFC 3339 format, for example 2012-11-15T16:19:00.094Z. Defaults to: `null`.
  - enqueuedTime (DateTime): The time the run was enqueued in UTC timezone in RFC 3339 format, for example 2012-11-15T16:19:00.094Z. Defaults to: `null`.
  - error (OperationError): Information about why the backup operation failed. This is only present if the run has the FAILED status. Defaults to: `null`.
  - id (String): A unique identifier for this backup run. Note that this is unique only within the scope of a particular Cloud SQL instance. Defaults to: `null`.
  - instance (String): Name of the database instance. Defaults to: `null`.
  - kind (String): This is always sql#backupRun. Defaults to: `null`.
  - selfLink (String): The URI of this resource. Defaults to: `null`.
  - startTime (DateTime): The time the backup operation actually started in UTC timezone in RFC 3339 format, for example 2012-11-15T16:19:00.094Z. Defaults to: `null`.
  - status (String): The status of this run. Defaults to: `null`.
  - type (String): The type of this run; can be either \&quot;AUTOMATED\&quot; or \&quot;ON_DEMAND\&quot;. Defaults to: `null`.
  - windowStartTime (DateTime): The start time of the backup window during which this the backup was attempted in RFC 3339 format, for example 2012-11-15T16:19:00.094Z. Defaults to: `null`.
  """

  defstruct [
    :"description",
    :"endTime",
    :"enqueuedTime",
    :"error",
    :"id",
    :"instance",
    :"kind",
    :"selfLink",
    :"startTime",
    :"status",
    :"type",
    :"windowStartTime"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1beta4.Model.BackupRun do
  import GoogleApi.SQLAdmin.V1beta4.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"error", :struct, GoogleApi.SQLAdmin.V1beta4.Model.OperationError, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1beta4.Model.BackupRun do
  def encode(value, options) do
    GoogleApi.SQLAdmin.V1beta4.Deserializer.serialize_non_nil(value, options)
  end
end

