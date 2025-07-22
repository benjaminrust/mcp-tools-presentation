# Hosted MCP Tools for AI Agent Orchestration

## 5 Security-Focused Model Context Protocol Servers

**Deployed on Heroku • Integrated with Claude 3.7 • Ready for Production**

This repository contains a presentation about deploying and integrating 5 hosted MCP (Model Context Protocol) tools with the Heroku Inference Addon for enhanced AI agent orchestration.

## 🚀 Live Presentation

**View the presentation:** [https://benjaminrust.github.io/mcp-tools-presentation/](https://benjaminrust.github.io/mcp-tools-presentation/)

## 📋 Presentation Overview

### What We Built
- **GitHub Security MCP** - Repository vulnerability analysis
- **Brave Search Threat Intelligence** - CVE database and threat search
- **Python Execution Network Analysis** - Security data analysis and risk scoring
- **Slack Incident Response** - Security alerts and team coordination
- **ArXiv Academic Security Research** - Security paper search and trend analysis

### Architecture
All tools use **FastMCP** pattern with **HTTP endpoints** for seamless integration with the Heroku Inference Addon.

### Technical Implementation
- **FastMCP Pattern** from the official MCP library
- **Deployment**: Heroku with Python 3.11.6 on Heroku-24 stack
- **Dependencies**: `mcp==1.11.0`, `fastapi==0.116.1`, `uvicorn==0.35.0`
- **Integration**: Claude 3.7 Inference Addon

## 🛠️ MCP Tools Deployed

### 1. GitHub Security MCP
- **URL**: `github-mcp-tool-brust-547dc3ab814c.herokuapp.com`
- **Capabilities**: Search security repositories, analyze repository security, trending security repos
- **Use Cases**: Vulnerability research, security code review, threat intelligence gathering

### 2. Brave Search Threat Intelligence MCP
- **URL**: `brave-search-mcp-tool-brust-08cf6b0b7afb.herokuapp.com`
- **Capabilities**: Search threat intelligence, CVE database queries, security news search
- **Use Cases**: CVE tracking and analysis, threat hunting, security awareness

### 3. Python Execution Network Analysis MCP
- **URL**: `python-exec-mcp-tool-brust-c1ed7e307b16.herokuapp.com`
- **Capabilities**: Analyze network data, calculate risk scores, generate security reports
- **Use Cases**: Network security monitoring, risk assessment, automated security reporting

### 4. Slack Incident Response MCP
- **URL**: `slack-mcp-tool-brust-9dfb030fe646.herokuapp.com`
- **Capabilities**: Send security alerts, coordinate incident response, get team status
- **Use Cases**: Incident response automation, security team coordination, real-time communication

### 5. ArXiv Academic Security Research MCP
- **URL**: `arxiv-mcp-tool-brust-new-2d3e9a1d0e69.herokuapp.com`
- **Capabilities**: Search security papers, analyze research trends, get paper summaries
- **Use Cases**: Academic research, security trend analysis, literature review automation

## 🔗 Integration with Heroku Inference Addon

### Configuration Steps
1. **Access Inference Addon Dashboard**
   ```
   https://addons-sso.heroku.com/apps/network-intelligence-prod/addons/claude-3-7
   ```

2. **Add MCP Server URLs**
   - GitHub: `https://github-mcp-tool-brust-547dc3ab814c.herokuapp.com/mcp`
   - Brave Search: `https://brave-search-mcp-tool-brust-08cf6b0b7afb.herokuapp.com/mcp`
   - Python Execution: `https://python-exec-mcp-tool-brust-c1ed7e307b16.herokuapp.com/mcp`
   - Slack: `https://slack-mcp-tool-brust-9dfb030fe646.herokuapp.com/mcp`
   - ArXiv: `https://arxiv-mcp-tool-brust-new-2d3e9a1d0e69.herokuapp.com/mcp`

## 📊 Example Use Cases

### Security Incident Response
1. **Detect Threat** → Brave Search MCP finds CVE information
2. **Analyze Code** → GitHub MCP searches for vulnerable patterns
3. **Calculate Risk** → Python Execution MCP assesses impact
4. **Alert Team** → Slack MCP coordinates response
5. **Research Solutions** → ArXiv MCP finds academic solutions

### Threat Intelligence Gathering
1. **Search Threats** → Brave Search MCP queries threat databases
2. **Analyze Patterns** → Python Execution MCP processes data
3. **Find Related Research** → ArXiv MCP discovers academic context
4. **Monitor Repositories** → GitHub MCP tracks code changes
5. **Update Team** → Slack MCP shares findings

## 🏗️ Architecture Benefits

### Scalability
- **Independent Scaling** - Each MCP tool scales separately
- **Resource Isolation** - No interference between tools
- **Load Distribution** - Requests distributed across apps

### Maintainability
- **Modular Design** - Each tool is self-contained
- **Easy Updates** - Deploy individual tools independently
- **Clear Separation** - Network intelligence app remains untouched

### Reliability
- **Fault Isolation** - Single tool failure doesn't affect others
- **Redundancy** - Multiple tools can provide similar functionality
- **Monitoring** - Individual tool health monitoring

## 📚 Resources

- [MCP Specification](https://modelcontextprotocol.io/)
- [Heroku Inference Addon](https://devcenter.heroku.com/articles/inference)
- [FastMCP Documentation](https://github.com/heroku/mcp-code-exec-python)
- [Slidev Documentation](https://sli.dev/)

## 👨‍💻 Author

**Benjamin Rust** - brust@salesforce.com

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

*Built with [Slidev](https://sli.dev/) - Presentation slides for developers* 