#
# Copyright (c) 2013, 2017 Oracle and/or its affiliates. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

Puppet::Type.newtype(:etherstub) do
  @doc = "Manage the configuration of Solaris etherstubs"

  ensurable

  newparam(:name) do
    desc "The name of the etherstub"
    isnamevar
    newvalues(/^\p{Alpha}[\p{Alnum}_.]{0,30}\d$/)
  end

  newparam(:temporary) do
    desc "Optional parameter that specifies that the etherstub is
              temporary.  Temporary etherstubs last until the next reboot."
    newvalues(:true, :false)
  end
end
