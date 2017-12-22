#!/bin/bash

cd $SPARTAN_SOURCE_DIR/src/iiwa_tri
drake-visualizer --script ${DRAKE_WORKSPACE}/multibody/rigid_body_plant/visualization/contact_viz.py --script ${DRAKE_WORKSPACE}/multibody/rigid_body_plant/visualization/show_time.py --script iiwaManipApp.py --bot-config iiwaManip.cfg --director-config $SPARTAN_SOURCE_DIR/models/iiwa/director/director_config_dual_box_rot.json $*
