// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EcommerceReturnPolicy {

    address public admin;

    enum ReturnStatus { None, Requested, Approved, Rejected }

    struct ReturnRequest {
        address customer;
        uint256 orderId;
        string reason;
        ReturnStatus status;
    }

    mapping(uint256 => ReturnRequest) public returnRequests;

    event ReturnRequested(uint256 orderId, address customer, string reason);
    event ReturnApproved(uint256 orderId);
    event ReturnRejected(uint256 orderId);

    constructor() {
        admin = msg.sender;
    }

    modifier onlyAdmin() {
        require(msg.sender == admin, "Only admin can perform this action");
        _;
    }

    function requestReturn(uint256 _orderId, string calldata _reason) external {
        require(returnRequests[_orderId].status == ReturnStatus.None, "Return already requested for this order");

        returnRequests[_orderId] = ReturnRequest({
            customer: msg.sender,
            orderId: _orderId,
            reason: _reason,
            status: ReturnStatus.Requested
        });

        emit ReturnRequested(_orderId, msg.sender, _reason);
    }

    function approveReturn(uint256 _orderId) external onlyAdmin {
        require(returnRequests[_orderId].status == ReturnStatus.Requested, "Return not requested or already handled");
        
        returnRequests[_orderId].status = ReturnStatus.Approved;

        emit ReturnApproved(_orderId);
    }

    function rejectReturn(uint256 _orderId) external onlyAdmin {
        require(returnRequests[_orderId].status == ReturnStatus.Requested, "Return not requested or already handled");
        
        returnRequests[_orderId].status = ReturnStatus.Rejected;

        emit ReturnRejected(_orderId);
    }
}

