/**
 * Copyright © 2019 kevinpollet <pollet.kevin@gmail.com>`
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE.md file.
 */

describe("index", (): void => {
  afterEach(() => (process.env.INPUT_NAME = undefined));

  it("should call console.log method the given name", (): Promise<void> => {
    process.env.INPUT_NAME = "Jest";

    const consoleLogSpy = jest.spyOn(globalThis.console, "log");

    return import("../src/index").then(() => {
      expect(consoleLogSpy.mock.calls.length).toBe(1);
      expect(consoleLogSpy.mock.calls[0][0]).toBe(
        `Hello, ${process.env.INPUT_NAME}!`
      );
    });
  });
});
