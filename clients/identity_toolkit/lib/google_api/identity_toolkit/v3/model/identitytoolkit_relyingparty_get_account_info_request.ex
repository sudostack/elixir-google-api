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

defmodule GoogleApi.IdentityToolkit.V3.Model.IdentitytoolkitRelyingpartyGetAccountInfoRequest do
  @moduledoc """
  Request to get the account information.

  ## Attributes

  - delegatedProjectNumber (String): GCP project number of the requesting delegated app. Currently only intended for Firebase V1 migration. Defaults to: `null`.
  - email (List[String]): The list of emails of the users to inquiry. Defaults to: `null`.
  - idToken (String): The GITKit token of the authenticated user. Defaults to: `null`.
  - localId (List[String]): The list of local ID&#39;s of the users to inquiry. Defaults to: `null`.
  - phoneNumber (List[String]): Privileged caller can query users by specified phone number. Defaults to: `null`.
  """

  defstruct [
    :"delegatedProjectNumber",
    :"email",
    :"idToken",
    :"localId",
    :"phoneNumber"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.IdentityToolkit.V3.Model.IdentitytoolkitRelyingpartyGetAccountInfoRequest do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.IdentityToolkit.V3.Model.IdentitytoolkitRelyingpartyGetAccountInfoRequest do
  def encode(value, options) do
    GoogleApi.IdentityToolkit.V3.Deserializer.serialize_non_nil(value, options)
  end
end

