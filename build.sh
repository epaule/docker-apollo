#!/usr/bin/env bash
cd /apollo/ && \
    ./apollo clean-all && ./apollo deploy && \
    cp /apollo/target/apollo*.war /tmp/apollo.war && \
	# So we can remove ~1.6 GB of cruft from the image. Ignore errors because cannot remove parent dir /apollo/
	# rm -rf /apollo/ || true && \
        # -- will keep them to use for recompilation
	# Before moving back into a standardized location (that we have write access to)
	mv /tmp/apollo.war /apollo/apollo.war
