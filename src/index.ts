/**
 * Copyright © 2019 kevinpollet <pollet.kevin@gmail.com>`
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE.md file.
 */

import { Toolkit } from "actions-toolkit";

Toolkit.run(tools => {
  tools.log("TypeScript ❤️ GitHub Actions");
  tools.exit.success();
});
