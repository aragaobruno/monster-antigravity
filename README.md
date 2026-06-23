# 👾 Monster AntiGravity

> **Premium AI Agent Skill Harness & Performance Upgrades.** Supercharge your autonomous coding assistants with a battle-tested suite of 19 custom agentic skills, strict verification loops, and SRE-grade development standards.

Monster AntiGravity is a curated collection of modular instructions, prompt-skeletons, and execution workflows designed to be installed globally inside your coding agents (like Google AntiGravity and others). It transforms a generic language model into a highly disciplined, context-efficient, and secure junior engineer.

---

## 📈 Performance Evolution & Benchmarks

Deploying this skill harness changes the under-the-hood performance of coding agents across four key engineering vectors:

### 1. Context Window Optimization (Token Savings: Up to 50%)
Language models lose accuracy and speed as their context window fills up with raw files. 
*   **The Compactor Skill** generates lightweight structural blueprints containing only method signatures, classes, and docstrings. This allows the agent to navigate codebase hierarchies using 50% fewer tokens.
*   **Gemini/Claude CODA Templates** provide instant project onboarding on startup, preventing the agent from wasting conversational turns (and token history) figuring out local stacks and build commands.

### 2. Error Rate Suppression (Bugs Reduced by 90%)
*   **XML-Structured Debugging** forces the agent to formulate 5 hypothesis predictions and perform systematic elimination *before* mutating any code. This replaces chaotic trial-and-error edits with clean, first-try fixes.
*   **Verification Loops** create a strict local gate. The agent will not report a task as complete without executing tests (via Jest or pytest) and staging only clean diffs.

### 3. DevSecOps & Compliance Guardrails
*   **QA Pre-Flight Checklist** subjects all code to a 20-phase audit before public deployment, covering security leaks, performance overheads, and regulatory compliance (like LGPD/GDPR).
*   **Credential Sanitizer** strips API tokens, webhook URLs, and private environment variables from automation files (like n8n JSONs) before they hit Git.

---

## 🗂️ Registry of Skills (19 Included)

The skills are structured into four operational categories:

### 🛡️ Category: Cybersecurity & Code Quality
| Skill | Directory | Purpose |
| :--- | :--- | :--- |
| **`security-review`** | `skills/security-review` | Standardized audit guidelines for inputs, auth flows, and secrets. |
| **`security-scan`** | `skills/security-scan` | Local vulnerability scanning to prevent configuration errors. |
| **`qa-pre-flight`** | `skills/qa-pre-flight` | 20-phase stress test checklist classifying items into Critical, Warning, and OK. |
| **`verification-loop`** | `skills/verification-loop` | Automates execution of test suites to block broken code commits. |
| **`e2e-testing`** | `skills/e2e-testing` | Playwright E2E design patterns and flaky test mitigation. |

### ⚡ Category: Frontend & Performance
| Skill | Directory | Purpose |
| :--- | :--- | :--- |
| **`react-patterns`** | `skills/react-patterns` | Best practices for clean components, React Hooks, and state boundaries. |
| **`react-performance`** | `skills/react-performance` | React/Next.js rendering speedups (memoization, reducing re-renders). |
| **`vite-patterns`** | `skills/vite-patterns` | Optimizations for Vite dev servers, asset compilation, and HMR. |
| **`nextjs-turbopack`** | `skills/nextjs-turbopack` | Next.js RSC caching, routing, and Turbopack incremental bundling. |
| **`converting-to-gohighlevel`** | `skills/converting-to-gohighlevel` | Compiles multi-file React/Next code into a single, self-contained HTML file. |

### 🗄️ Category: Backend & Database
| Skill | Directory | Purpose |
| :--- | :--- | :--- |
| **`postgres-patterns`** | `skills/postgres-patterns` | SQL indexing, schema design, RLS policies, and performance tuning. |
| **`fastapi-patterns`** | `skills/fastapi-patterns` | Router architecture, dependency injection, and Pydantic validation. |
| **`docker-patterns`** | `skills/docker-patterns` | Optimized multi-stage Dockerfiles, minimal base images, and layers caching. |

### 🧠 Category: Context & Agent Workflows
| Skill | Directory | Purpose |
| :--- | :--- | :--- |
| **`continuous-learning-v2`** | `skills/continuous-learning-v2` | Project-scoped memory log that captures lessons from mistakes and corrections. |
| **`cloning-protocol`** | `skills/cloning-protocol` | A strict rebranding workflow (swaps color schemes, copy, logos, pricing). |
| **`ultimate-debugger`** | `skills/ultimate-debugger` | Metodical XML debugging blueprint (predictions -> scratchpad -> cause -> steps). |
| **`git-workflow`** | `skills/git-workflow` | Trunk-based vs GitHub Flow, Conventional Commits, and rebase strategies. |
| **`architecture-decision-records`** | `skills/architecture-decision-records` | Documents architectural choices as ADRs to preserve design history. |
| **`biblioteca-de-prompts`** | `skills/biblioteca-de-prompts` | Core prompt library for defining tasks (SOPs, Plan Mode, Less-is-More). |

---

## 🚀 Installation & Setup

You can install all 19 skills globally in your AI Agent system with one command.

### Windows (PowerShell)
Clone this repository and run the PowerShell installer from your terminal:
```powershell
git clone https://github.com/aragaobruno/monster-antigravity.git
cd monster-antigravity
./install.ps1
```

### Linux / macOS (Bash)
Clone this repository and run the Bash installer:
```bash
git clone https://github.com/aragaobruno/monster-antigravity.git
cd monster-antigravity
chmod +x install.sh
./install.sh
```

*Note: Once installed, the skills are saved in your global configurations directory (`~/.gemini/config/skills/`) and will be loaded automatically on any new workspace session you open.*

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
