# Copyright 2018 Google Inc.
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

defmodule GoogleApi.Drive.V3.Model.Change do
  @moduledoc """
  A change to a file or Team Drive.

  ## Attributes

  - file (File): The updated state of the file. Present if the type is file and the file has not been removed from this list of changes. Defaults to: `null`.
  - fileId (String.t): The ID of the file which has changed. Defaults to: `null`.
  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string \&quot;drive#change\&quot;. Defaults to: `null`.
  - removed (boolean()): Whether the file or Team Drive has been removed from this list of changes, for example by deletion or loss of access. Defaults to: `null`.
  - teamDrive (TeamDrive): The updated state of the Team Drive. Present if the type is teamDrive, the user is still a member of the Team Drive, and the Team Drive has not been removed. Defaults to: `null`.
  - teamDriveId (String.t): The ID of the Team Drive associated with this change. Defaults to: `null`.
  - time (DateTime.t): The time of this change (RFC 3339 date-time). Defaults to: `null`.
  - type (String.t): The type of the change. Possible values are file and teamDrive. Defaults to: `null`.
  """

  defstruct [
    :file,
    :fileId,
    :kind,
    :removed,
    :teamDrive,
    :teamDriveId,
    :time,
    :type
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Drive.V3.Model.Change do
  import GoogleApi.Drive.V3.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:file, :struct, GoogleApi.Drive.V3.Model.File, options)
    |> deserialize(:teamDrive, :struct, GoogleApi.Drive.V3.Model.TeamDrive, options)
    |> deserialize(:time, :date, nil, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Drive.V3.Model.Change do
  def encode(value, options) do
    GoogleApi.Drive.V3.Deserializer.serialize_non_nil(value, options)
  end
end
