//
// Copyright (C) 2014 OpenSim Ltd.
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

#ifndef __INET_IEEE80211OFDMDEMODULATORMODULE_H
#define __INET_IEEE80211OFDMDEMODULATORMODULE_H

#include "inet/common/INETDefs.h"
#include "inet/physicallayer/contract/bitlevel/IDemodulator.h"
#include "inet/physicallayer/ieee80211/bitlevel/Ieee80211OfdmDemodulator.h"

namespace inet {

namespace physicallayer {

class INET_API Ieee80211OfdmDemodulatorModule : public IDemodulator, public cSimpleModule
{
  protected:
    const Ieee80211OfdmDemodulator *ofdmDemodulator = nullptr;

  protected:
    virtual int numInitStages() const override { return NUM_INIT_STAGES; }
    virtual void initialize(int stage) override;
    virtual void handleMessage(cMessage *msg) override { throw cRuntimeError("This module doesn't handle self messages"); }

  public:
    virtual ~Ieee80211OfdmDemodulatorModule();

    virtual std::ostream& printToStream(std::ostream& stream, int level, int evFlags = 0) const override { return ofdmDemodulator->printToStream(stream, level); }
    const Ieee80211OfdmModulation *getModulation() const { return ofdmDemodulator->getModulation(); }
    const IReceptionBitModel *demodulate(const IReceptionSymbolModel *symbolModel) const override;
};
} /* namespace physicallayer */
} /* namespace inet */

#endif

