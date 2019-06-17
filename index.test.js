const { suma } = require("./suma")

describe("Test Suma", () => {
  it("suma", () => {
    expect(suma(4, 5)).toEqual(9);
  });
});
