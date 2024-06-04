// contracts/Marketplace.sol

pragma solidity ^0.8.0;

contract Marketplace {
    struct Item {
        uint id;
        address payable seller;
        address payable buyer;
        uint price;
        bool sold;
    }

    uint public itemCount;
    mapping(uint => Item) public items;

    event ItemListed(uint id, address seller, uint price);
    event ItemSold(uint id, address seller, address buyer, uint price);

    function listItem(uint _price) public {
        itemCount++;
        items[itemCount] = Item(itemCount, payable(msg.sender), payable(address(0)), _price, false);
        emit ItemListed(itemCount, msg.sender, _price);
    }

    function buyItem(uint _id) public payable {
        Item storage item = items[_id];
        require(_id > 0 && _id <= itemCount, "Item does not exist");
        require(msg.value >= item.price, "Not enough Ether to purchase item");
        require(!item.sold, "Item already sold");
        item.buyer = payable(msg.sender);
        item.seller.transfer(item.price);
        item.sold = true;
        emit ItemSold(_id, item.seller, item.buyer, item.price);
    }
}
