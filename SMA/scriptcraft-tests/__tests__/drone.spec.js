"use strict";
describe("Drone module", function () {
    it("loads", function () {
        var drone;
        try {
            drone = require("drone");
        }
        catch (e) {
            console.log("Error loading drone module");
            console.log(e);
        }
        expect(drone).toBeTruthy();
    });
});
