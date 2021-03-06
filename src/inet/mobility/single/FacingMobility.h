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

#ifndef __INET_FACINGMOBILITY_H
#define __INET_FACINGMOBILITY_H

#include "inet/mobility/base/MobilityBase.h"

namespace inet {

class INET_API FacingMobility : public MobilityBase
{
  protected:
    IMobility *sourceMobility = nullptr;
    IMobility *targetMobility = nullptr;

  protected:
    virtual int numInitStages() const override { return NUM_INIT_STAGES; }
    virtual void initialize(int stage) override;
    virtual void handleSelfMessage(cMessage *msg) override { throw cRuntimeError("Unknown self message"); }
    virtual void handleParameterChange(const char *name) override;

  public:
    virtual const Coord& getCurrentPosition() override { return lastPosition; }
    virtual const Coord& getCurrentVelocity() override { return Coord::ZERO; }
    virtual const Coord& getCurrentAcceleration() override { return Coord::ZERO; }

    virtual const Quaternion& getCurrentAngularPosition() override;
    virtual const Quaternion& getCurrentAngularVelocity() override { return Quaternion::NIL; }
    virtual const Quaternion& getCurrentAngularAcceleration() override { return Quaternion::NIL; }
};

} // namespace inet

#endif

