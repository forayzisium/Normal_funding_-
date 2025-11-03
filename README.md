# 🪙 crowdFunding Smart Contract

This is a simple **crowdfunding** smart contract written in **Solidity**.  
It lets people create a campaign, accept funds from others, and withdraw the money once the goal is reached.

---

## 💡 What it does

- The **owner** (who deploys the contract) starts a fundraising campaign.  
- The campaign has a **name**, **description**, **funding goal**, and a **deadline** (set in days).  
- Other people can **send Ether** to support the project before the deadline.  
- Once the **goal** is reached, the **owner** can withdraw the collected funds.

---

## ⚙️ How it works

### 1. Deployment

When you deploy the contract, you need to enter:

- `_name`: The project name  
- `_description`: What the project is about  
- `_goal`: The target amount (in wei)  
- `_duration`: How long the campaign will last (in days)

