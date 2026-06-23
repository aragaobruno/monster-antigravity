# Benchmarks & Measurement Methodology

This document outlines the testing parameters and methodologies used to measure the efficiency gains of the Monster AntiGravity skill harness under local test environments.

---

## 1. Context Efficiency (Token Conservation)

**Test Objective**: Measure the reduction of input context size when using the `context-compactor` skill compared to sending full-text codebase files.

### Methodology
*   **Baseline**: Loading 12 full Python codebase modules (containing 4,200 lines of code) directly into the agent's context window.
*   **Test Case**: Running the `context-compactor` script over the same modules to generate a single structural skeleton file containing only classes, interfaces, function signatures, and docstrings.
*   **Metric**: Input token count measured via model API metadata response.

### Results
*   **Baseline Input Size**: ~48,500 tokens.
*   **Compacted Skeleton Input Size**: ~18,200 tokens.
*   **Observation**: A **62.4% reduction** in input tokens. The agent maintained functional navigation capability (knowing which files to query or read next) while freeing up substantial context space.

---

## 2. Correctness & Debug Speed

**Test Objective**: Measure average resolution time for software bugs when the agent uses the XML-structured `ultimate-debugger` skill versus standard trial-and-error iterations.

### Methodology
*   **Test Bed**: 10 mock bugs introduced in a FastAPI repository (e.g., connection pool leaks, circular imports, incorrect Pydantic validators, wrong environment variable types).
*   **Baseline Agent Setup**: Agent asked to "Fix the failing tests in this codebase" without any specific debugging prompt.
*   **Test Case Agent Setup**: Agent instructed to load the `ultimate-debugger` skill and process the stack traces.
*   **Metric**: Elapsed clock time from error input to successful test run (pytest green).

### Results
| Metric / Run | Baseline (No Skill) | Test Case (With `ultimate-debugger`) | Improvement (%) |
| :--- | :--- | :--- | :--- |
| **Avg. Correction Time** | 10.8 minutes | 3.6 minutes | **66.6% Faster** |
| **Required Code Edits** | 3.4 attempts | 1.1 attempts | **67.6% Cleaner** |
| **Successful Fix Rate** | 70% (3 runs failed/abandoned) | 100% (all 10 fixed) | **+30% Success** |

### Key Findings
The XML hypothesis scaffolding forces the agent to analyze dependency paths and runtime configurations *before* mutating code, suppressing the typical LLM "hallucination loop" where it attempts multiple minor syntax corrections that compile but do not resolve the root cause.

---

## 3. DevSecOps & Security Sanitization

**Test Objective**: Validate the accuracy of secret redaction in JSON workflow files using the `n8n-workflow-packer` utility.

### Methodology
*   **Test Dataset**: A complex multi-step n8n JSON schema containing 5 active API integrations, containing mock Postgres connection URIs (`postgres://user:password@localhost`), raw webhook URLs, and bearer auth tokens.
*   **Execution**: Run `node packer.js input.json output.json`.
*   **Metric**: Presence of sensitive sub-strings (scanned via grep) in `output.json`.

### Results
*   **Secret Leakage**: 0% (All credentials, tokens, and target API endpoints replaced with `[REDACTED_SECRET]` or `[REDACTED_URL]`).
*   **Workflow Integrity**: 100% (The structured JSON parser accurately preserved node topology and trigger connections, allowing the sanitized workflow to be safely committed and imported elsewhere).
