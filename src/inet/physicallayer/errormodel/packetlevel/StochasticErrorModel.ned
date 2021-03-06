//
// Copyright (C) 2013 OpenSim Ltd.
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
//
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see <https://www.gnu.org/licenses/>.
//

package inet.physicallayer.errormodel.packetlevel;

import inet.physicallayer.base.packetlevel.ErrorModelBase;

//
// This error model provides parameters to specify the constant packet error
// rate, bit error rate, and symbol error rate for receptions independent of
// any interfering transmission or noise.
//
module StochasticErrorModel extends ErrorModelBase
{
    parameters:
        double packetErrorRate = default(nan); // a probability in the range [0, 1] or NaN if not set
        double bitErrorRate = default(nan);    // a probability in the range [0, 1] or NaN if not set
        double symbolErrorRate = default(nan); // a probability in the range [0, 1] or NaN if not set
        @class(StochasticErrorModel);
}

