//
// Copyright (C) 2020 OpenSim Ltd.
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

package inet.queueing.base;

//
// This is a base module for various packet meter modules. Derived modules must
// implement a single meterPacket() function which meters the flow of and attaches
// the required tags.
//
// @see ~IPacketMeter
//
simple PacketMeterBase extends PacketFlowBase
{
    parameters:
        displayStringTextFormat = default("metered %p pk (%l)");
        @class(PacketMeterBase);
}
