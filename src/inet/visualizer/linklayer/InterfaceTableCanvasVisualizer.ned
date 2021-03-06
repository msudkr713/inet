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

package inet.visualizer.linklayer;

import inet.visualizer.base.InterfaceTableVisualizerBase;
import inet.visualizer.contract.IInterfaceTableVisualizer;

//
// This module visualizes interface tables on a 2D canvas. It displays a label
// for each selected network interface at the owner network node.
//
// @see ~InterfaceTableOsgVisualizer, ~InterfaceTableVisualizer, ~InterfaceTableVisualizerBase, ~IInterfaceTableVisualizer
//
simple InterfaceTableCanvasVisualizer extends InterfaceTableVisualizerBase like IInterfaceTableVisualizer
{
    parameters:
        double zIndex = default(10); // determines the drawing order of figures relative to other visualizers
        @class(InterfaceTableCanvasVisualizer);
}

