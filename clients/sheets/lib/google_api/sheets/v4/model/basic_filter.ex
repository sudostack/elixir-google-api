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

defmodule GoogleApi.Sheets.V4.Model.BasicFilter do
  @moduledoc """
  The default filter associated with a sheet.

  ## Attributes

  - criteria (%{optional(String.t) &#x3D;&gt; FilterCriteria}): The criteria for showing/hiding values per column. The map&#39;s key is the column index, and the value is the criteria for that column. Defaults to: `null`.
  - range (GridRange): The range the filter covers. Defaults to: `null`.
  - sortSpecs ([SortSpec]): The sort order per column. Later specifications are used when values are equal in the earlier specifications. Defaults to: `null`.
  """

  @type t :: %__MODULE__{
          criteria: map(),
          range: GoogleApi.Sheets.V4.Model.GridRange.t(),
          sortSpecs: list(GoogleApi.Sheets.V4.Model.SortSpec.t())
        }

  defstruct [
    :criteria,
    :range,
    :sortSpecs
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.BasicFilter do
  import GoogleApi.Sheets.V4.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:criteria, :map, GoogleApi.Sheets.V4.Model.FilterCriteria, options)
    |> deserialize(:range, :struct, GoogleApi.Sheets.V4.Model.GridRange, options)
    |> deserialize(:sortSpecs, :list, GoogleApi.Sheets.V4.Model.SortSpec, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.BasicFilter do
  def encode(value, options) do
    GoogleApi.Sheets.V4.Deserializer.serialize_non_nil(value, options)
  end
end
