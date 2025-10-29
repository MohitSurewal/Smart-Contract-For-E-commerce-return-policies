# Smart Contract For E-commerce Return Policies

## 📝 Project Description
This project implements a **transparent and decentralized return request system** for e-commerce platforms using **Solidity Smart Contracts**.  
It allows customers to request returns for purchased products, and the admin (seller) can approve or reject those requests.  
The contract ensures that **return records cannot be altered**, improving trust between buyers and sellers.

---

## 🎯 Project Vision
To create a blockchain-based return management system that:
- Eliminates fraudulent return claims
- Increases transparency between sellers and buyers
- Reduces disputes and support overhead
- Ensures a permanent and tamper-proof record of return requests

---

## 🔑 Key Features
| Feature | Description |
|--------|-------------|
| Customer Return Request | Customers can submit a return request with reason and order ID. |
| Admin Approval System | The admin can approve or reject the return request. |
| Status Tracking | Each return request is stored on-chain with its current status. |
| Transparency | No party can modify or delete return records once submitted. |

---

## 🧱 Smart Contract Functions
| Function | Description |
|---------|-------------|
| `requestReturn(orderId, reason)` | Allows customer to create a return request. |
| `approveReturn(orderId)` | Admin approves a request. |
| `rejectReturn(orderId)` | Admin rejects a request. |
| `returnRequests(orderId)` | Fetches return request details. |

---

## 🔮 Future Scope
| Area | Details |
|------|---------|
| Refund Settlement | Integrate automatic refunds using stablecoins or payment gateways. |
| Return Time Limit | Add time limits (e.g., return must be requested within 7 days). |
| NFT Receipts | Issue NFT receipts as ownership proof. |
| Automated Dispute System | Introduce arbitration or AI-based resolution mechanisms. |
| UI Dashboard | Create a full-feature decentralized web UI for customers and admins. |

---

## 🏗️ Technologies Used
- Solidity ^0.8.0
- Ethereum / EVM-Compatible Blockchain
- Remix / Hardhat / Truffle (for deployment)
- MetaMask (for interaction)

---

## 👤 Author
**Your Name / Your Team Name**  
Feel free to modify and add your personal / project details.

---

## ✅ License
This project is licensed under the **MIT License**.

contract address : 0xbc1Bc8c0B9DB7F49197abf849447Aa78BBdDbE15

<img width="1906" height="1037" alt="image" src="https://github.com/user-attachments/assets/9a677a41-b989-4863-981f-f421eabbc33e" />
