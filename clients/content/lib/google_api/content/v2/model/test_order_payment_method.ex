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

defmodule GoogleApi.Content.V2.Model.TestOrderPaymentMethod do
  @moduledoc """
  

  ## Attributes

  - expirationMonth (Integer): The card expiration month (January &#x3D; 1, February &#x3D; 2 etc.). Defaults to: `null`.
  - expirationYear (Integer): The card expiration year (4-digit, e.g. 2015). Defaults to: `null`.
  - lastFourDigits (String): The last four digits of the card number. Defaults to: `null`.
  - predefinedBillingAddress (String): The billing address. Defaults to: `null`.
  - type (String): The type of instrument. Note that real orders might have different values than the four values accepted by createTestOrder. Defaults to: `null`.
  """

  defstruct [
    :"expirationMonth",
    :"expirationYear",
    :"lastFourDigits",
    :"predefinedBillingAddress",
    :"type"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.TestOrderPaymentMethod do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.TestOrderPaymentMethod do
  def encode(value, options) do
    GoogleApi.Content.V2.Deserializer.serialize_non_nil(value, options)
  end
end

