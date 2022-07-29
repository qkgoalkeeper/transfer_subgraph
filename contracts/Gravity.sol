pragma solidity ^0.4.0;

contract GravatarRegistry {
    event NewGravatar(uint256 id, address owner, address receiver, uint256 money);
  // event NewGravatar(uint id, address owner, string displayName, string imageUrl);
  // event UpdatedGravatar(uint id, address owner, string displayName, string imageUrl);

  struct Gravatar {
    address owner;

    address receiver;

    uint256 money;
    // string displayName;
    // string imageUrl;
  }

  Gravatar[] public gravatars;

  // mapping (uint => address) public gravatarToOwner;
  // mapping (address => uint) public ownerToGravatar;

  function createGravatar(address _owner, address _receiver,uint256 _money) public {
    // require(ownerToGravatar[msg.sender] == 0);
    uint _id = gravatars.push(Gravatar(_owner, _receiver, _money))-1;
    // gravatarToOwner[id] = msg.sender;
    // ownerToGravatar[msg.sender] = id;

    emit NewGravatar(_id,_owner,_receiver,_money);
  }

  // function getGravatar(address owner) public view returns (string, string) {
  //   uint id = ownerToGravatar[owner];
  //   return (gravatars[id].displayName, gravatars[id].imageUrl);
  // }

  // function updateGravatarName(string _displayName) public {
  //   require(ownerToGravatar[msg.sender] != 0);
  //   require(msg.sender == gravatars[ownerToGravatar[msg.sender]].owner);

  //   uint id = ownerToGravatar[msg.sender];

  //   gravatars[id].displayName = _displayName;
  //   emit UpdatedGravatar(id, msg.sender, _displayName, gravatars[id].imageUrl);
  // }

  // function updateGravatarImage(string _imageUrl) public {
  //   require(ownerToGravatar[msg.sender] != 0);
  //   require(msg.sender == gravatars[ownerToGravatar[msg.sender]].owner);

  //   uint id = ownerToGravatar[msg.sender];

  //   gravatars[id].imageUrl =  _imageUrl;
  //   emit UpdatedGravatar(id, msg.sender, gravatars[id].displayName, _imageUrl);
  // }

  // // the gravatar at position 0 of gravatars[]
  // // is fake
  // // it's a mythical gravatar
  // // that doesn't really exist
  // // dani will invoke this function once when this contract is deployed
  // // but then no more
  // function setMythicalGravatar() public {
  //   require(msg.sender == 0x8d3e809Fbd258083a5Ba004a527159Da535c8abA);
  //   gravatars.push(Gravatar(0x0, " ", " "));
  // }
}
