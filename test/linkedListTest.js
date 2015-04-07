var expect = require('chai').expect;
var LinkedList = require('../lib/linkedList.js');

describe('Linked List', function() {
  it('should have a value after being created', function() {
    var list = new LinkedList(22, null);

    expect(list).to.have.property('val').that.equals(22);
  });
});
