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

defmodule GoogleApi.Spanner.V1.Model.ResultSetMetadata do
  @moduledoc """
  Metadata about a ResultSet or PartialResultSet.

  ## Attributes

  - rowType (StructType): Indicates the field names and types for the rows in the result set.  For example, a SQL query like &#x60;\&quot;SELECT UserId, UserName FROM Users\&quot;&#x60; could return a &#x60;row_type&#x60; value like:      \&quot;fields\&quot;: [       { \&quot;name\&quot;: \&quot;UserId\&quot;, \&quot;type\&quot;: { \&quot;code\&quot;: \&quot;INT64\&quot; } },       { \&quot;name\&quot;: \&quot;UserName\&quot;, \&quot;type\&quot;: { \&quot;code\&quot;: \&quot;STRING\&quot; } },     ] Defaults to: `null`.
  - transaction (Transaction): If the read or SQL query began a transaction as a side-effect, the information about the new transaction is yielded here. Defaults to: `null`.
  """

  defstruct [
    :"rowType",
    :"transaction"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.ResultSetMetadata do
  import GoogleApi.Spanner.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"rowType", :struct, GoogleApi.Spanner.V1.Model.StructType, options)
    |> deserialize(:"transaction", :struct, GoogleApi.Spanner.V1.Model.Transaction, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.ResultSetMetadata do
  def encode(value, options) do
    GoogleApi.Spanner.V1.Deserializer.serialize_non_nil(value, options)
  end
end

