//
// Copyright (C) 2012 Opensim Ltd
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
//
// You should have received a copy of the GNU Lesser General Public License
// along with this program; if not, see <http://www.gnu.org/licenses/>.
//

#include "inet/common/IInterfaceRegistrationListener.h"

namespace inet {

void registerInterface(const InterfaceEntry& interface, cGate *gate)
{
    cGate* pathEndGate = gate->getPathEndGate();
    IInterfaceRegistrationListener *interfaceRegistration = dynamic_cast<IInterfaceRegistrationListener *>(pathEndGate->getOwner());
    if (interfaceRegistration != nullptr)
        interfaceRegistration->handleRegisterInterface(interface, pathEndGate);
}

cModule *lookupInterface(const InterfaceEntry& interface, cGate *gate)
{
    auto pathEndGate = gate->getPathEndGate();
    auto listener = dynamic_cast<IInterfaceRegistrationListener *>(pathEndGate->getOwner());
    if (listener != nullptr)
        return listener->handleLookupInterface(interface, pathEndGate);
    else
        return nullptr;
}

} // namespace inet

