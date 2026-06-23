# 👾 Monster AntiGravity

> **SRE-Designed AI Agent Skill Harness.** A curated collection of 19 custom agentic skills focused on context efficiency, structured debugging, and local security. Built based on production lessons learned from deploying real-world software products.

Monster AntiGravity is a suite of modular instructions, prompt-skeletons, and execution workflows designed to be installed globally in your coding agents (such as Google AntiGravity). It guides language models to act with greater context awareness, disciplined debugging loops, and security guardrails.

---

## 📈 Metrics & Impact

These skills are designed to optimize agentic behavior across three primary engineering vectors. Below are estimated impacts based on local test runs:

*   **Context Efficiency (Token Conservation)**: By using the `context-compactor` skill to generate lightweight structural blueprints (retaining only method signatures and docstrings), codebase representation size is reduced. For large files, this leads to an observed token reduction of up to 50% during deep research tasks.
*   **Correctness & Debug Speed**: Using the `ultimate-debugger` (systematic XML-structured hypothesis formulation prior to mutations) replaces trial-and-error edits. In local validation trials, the average time to identify and fix localized bugs was reduced from over 10 minutes (using standard iterative attempts) to under 4 minutes.
*   **DevSecOps Guardrails**: The `qa-pre-flight` and `security-review` skills mandate local audit checkpoints covering input sanitization, database RLS policies, and secret scrubbing. Running `n8n-workflow-packer` automatically redacts keys and endpoints from automation JSON files, preventing credentials leakage.

To learn more about the measurement methodology, see [docs/benchmarks.md](docs/benchmarks.md).

---

## 🗂️ Registry of Skills (19 Included)

The skills are structured into four operational categories:

### 🛡️ Category: Cybersecurity & Code Quality
| Skill | Directory | Purpose |
| :--- | :--- | :--- |
| **`security-review`** | [`skills/security-review`](./skills/security-review/SKILL.md) | Standardized audit guidelines for inputs, auth flows, and secrets. |
| **`security-scan`** | [`skills/security-scan`](./skills/security-scan/SKILL.md) | Local vulnerability scanning to prevent configuration errors. |
| **`qa-pre-flight`** | [`skills/qa-pre-flight`](./skills/qa-pre-flight/SKILL.md) | 20-phase stress test checklist classifying items into Critical, Warning, and OK. |
| **`verification-loop`** | [`skills/verification-loop`](./skills/verification-loop/SKILL.md) | Automates execution of test suites to block broken code commits. |
| **`e2e-testing`** | [`skills/e2e-testing`](./skills/e2e-testing/SKILL.md) | Playwright E2E design patterns and flaky test mitigation. |

### ⚡ Category: Frontend & Performance
| Skill | Directory | Purpose |
| :--- | :--- | :--- |
| **`react-patterns`** | [`skills/react-patterns`](./skills/react-patterns/SKILL.md) | Best practices for clean components, React Hooks, and state boundaries. |
| **`react-performance`** | [`skills/react-performance`](./skills/react-performance/SKILL.md) | React/Next.js rendering speedups (memoization, reducing re-renders). |
| **`vite-patterns`** | [`skills/vite-patterns`](./skills/vite-patterns/SKILL.md) | Optimizations for Vite dev servers, asset compilation, and HMR. |
| **`nextjs-turbopack`** | [`skills/nextjs-turbopack`](./skills/nextjs-turbopack/SKILL.md) | Next.js RSC caching, routing, and Turbopack incremental bundling. |
| **`converting-to-gohighlevel`** | [`skills/converting-to-gohighlevel`](./skills/converting-to-gohighlevel/SKILL.md) | Compiles multi-file React/Next code into a single, self-contained HTML file. |

### 🗄️ Category: Backend & Database
| Skill | Directory | Purpose |
| :--- | :--- | :--- |
| **`postgres-patterns`** | [`skills/postgres-patterns`](./skills/postgres-patterns/SKILL.md) | SQL indexing, schema design, RLS policies, and performance tuning. |
| **`fastapi-patterns`** | [`skills/fastapi-patterns`](./skills/fastapi-patterns/SKILL.md) | Router architecture, dependency injection, and Pydantic validation. |
| **`docker-patterns`** | [`skills/docker-patterns`](./skills/docker-patterns/SKILL.md) | Optimized multi-stage Dockerfiles, minimal base images, and layers caching. |

### 🧠 Category: Context & Agent Workflows
| Skill | Directory | Purpose |
| :--- | :--- | :--- |
| **`continuous-learning-v2`** | [`skills/continuous-learning-v2`](./skills/continuous-learning-v2/SKILL.md) | Project-scoped memory log that captures lessons from mistakes and corrections. |
| **`cloning-protocol`** | [`skills/cloning-protocol`](./skills/cloning-protocol/SKILL.md) | A strict rebranding workflow (swaps color schemes, copy, logos, pricing). |
| **`ultimate-debugger`** | [`skills/ultimate-debugger`](./skills/ultimate-debugger/SKILL.md) | Metodical XML debugging blueprint (predictions -> scratchpad -> cause -> steps). |
| **`git-workflow`** | [`skills/git-workflow`](./skills/git-workflow/SKILL.md) | Trunk-based vs GitHub Flow, Conventional Commits, and rebase strategies. |
| **`architecture-decision-records`** | [`skills/architecture-decision-records`](./skills/architecture-decision-records/SKILL.md) | Documents architectural choices as ADRs to preserve design history. |
| **`biblioteca-de-prompts`** | [`skills/biblioteca-de-prompts`](./skills/biblioteca-de-prompts/SKILL.md) | Core prompt library for defining tasks (SOPs, Plan Mode, Less-is-More). |

---

## ⚡ Quick Start: Using a Skill (Example: Ultimate Debugger)

Once installed, your coding agent loaded with these skills will apply structured workflows to complex tasks. Here is an example of how to invoke and apply the `ultimate-debugger` skill:

1. **Triggering the Skill**: When you encounter a bug, stack trace, or build error, prompt your agent:
   ```
   Apply the ultimate-debugger skill to analyze this error: [error message / stack trace]
   ```

2. **Expected Output Flow (Structured XML Debugging)**:
   The agent will generate a systematic analysis structure before modifying code:
   ```xml
   <debugging_process>
     <hypothesis_1>Database connection timeout due to missing release calls in db.py</hypothesis_1>
     <hypothesis_2>Incorrect environment variable loaded on Windows hosts</hypothesis_2>
     <scratchpad>
       [Agent performs checks, inspects port bindings and imports]
     </scratchpad>
     <root_cause>Connection pool was set to 5, exceeding threshold during parallel test runs.</root_cause>
     <resolution_plan>Wrap connection calls in try/finally blocks and increase max pool connections.</resolution_plan>
   </debugging_process>
   ```

3. **Execution**: The agent then applies the approved resolution plan, executes local tests, and stages the git diff.

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
