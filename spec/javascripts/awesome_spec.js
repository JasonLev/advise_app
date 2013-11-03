// require spec_helper
// require advisers

// this will be to see if our tests are setup:
// describe("The string 'awesome'", function() {
// 	it("Should be 'awesome'", function() {
// 		"awesome".should.eq("awesome");
// 	});
// });

describe('numAdvisers()', function() {
	it('should return the number of advisers in the advisers div', function() {
    var count = $('#adviser_list').children().length;
    numAdvisers().should.eq(count);
	});
})