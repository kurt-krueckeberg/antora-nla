#!/bin/bash

# This version avoids all variables and loops to ensure the shell doesn't misinterpret the list.

# Module 1237
mkdir -p modules/1237/partials && [ -f modules/1237/nav.adoc ] && mv modules/1237/nav.adoc modules/1237/partials/nav.adoc && echo "Moved 1237"

# Module 1291
mkdir -p modules/1291/partials && [ -f modules/1291/nav.adoc ] && mv modules/1291/nav.adoc modules/1291/partials/nav.adoc && echo "Moved 1291"

# Module 146
mkdir -p modules/146/partials && [ -f modules/146/nav.adoc ] && mv modules/146/nav.adoc modules/146/partials/nav.adoc && echo "Moved 146"

# Module 147
mkdir -p modules/147/partials && [ -f modules/147/nav.adoc ] && mv modules/147/nav.adoc modules/147/partials/nav.adoc && echo "Moved 147"

# Module 139
mkdir -p modules/139/partials && [ -f modules/139/nav.adoc ] && mv modules/139/nav.adoc modules/139/partials/nav.adoc && echo "Moved 139"

# Module 689
mkdir -p modules/689/partials && [ -f modules/689/nav.adoc ] && mv modules/689/nav.adoc modules/689/partials/nav.adoc && echo "Moved 689"

# Module 188
mkdir -p modules/188/partials && [ -f modules/188/nav.adoc ] && mv modules/188/nav.adoc modules/188/partials/nav.adoc && echo "Moved 188"

echo -e "\n--- Copy these lines into modules/rentkammer/nav.adoc ---\n"
echo "** Rentkammer Case Files"
echo ":leveloffset: +1"
echo "include::1237:partial\$nav.adoc[]"
echo "include::1291:partial\$nav.adoc[]"
echo "include::146:partial\$nav.adoc[]"
echo "include::147:partial\$nav.adoc[]"
echo "include::139:partial\$nav.adoc[]"
echo "include::689:partial\$nav.adoc[]"
echo "include::188:partial\$nav.adoc[]"
echo ":leveloffset: -1"
