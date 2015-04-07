var Node = function(previous, value, next) {
  this.previous = null;
  this.value = value;
  this.next = next;
};

var LinkedList = function LinkedList() {
  this.head = null;
}

//LinkedList or Node?
LinkedList.prototype.insert = function(v) {
  var head = this.head,
      current = head;

  while(current && current.next) {
    previous = current;
    current = current.next;
  }
  current.next = {value:v, previous:current, next:null}
};
//LinkedList or Node?
LinkedList.prototype.remove = function(v) {
  var head = this.head,
      current = head;

  while(!(current == v)) {
    current = current. next;
  }
  current.previous.next = current.next;
  current.next.previous = current.previous;
};



var nodeOne = new LinkedList(null, 23, null);
var nodeTwo = new LinkedList(nodeOne, 22, null);
nodeOne.next = nodeTwo;

module.exports = LinkedList;
