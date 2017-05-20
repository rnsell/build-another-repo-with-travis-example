
describe("Should say hello world.", ()=> {
    it("Should be able to require index.js", function(done){
        require("../index.js");
        done();
    })
})