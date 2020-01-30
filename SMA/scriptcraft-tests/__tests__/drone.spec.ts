describe("Drone module", () => {
  it("loads", () => {
    let drone;
    try {
      drone = require("drone");
    } catch (e) {
      console.log("Error loading drone module");
      console.log(e);
    }
    expect(drone).toBeTruthy();
  });
});
