# Platform Design

## Conversations

From a private Slack conversation 24 Oct 2019:

Duncan McGreggor 1:09 PM
the high level capabilities of a distributed ABM platform might be something like the following:

1. state tracking (world and agent) over multiple machines (virtual or otherwise)
2. being able to perform calculations anywhere (like state, above)
3. supporting computations in any language (necessary for adoption in scientific communities)
4. rendering views/reports of model runs in real time and after the fact
5. none of these things being tightly coupled

Duncan McGreggor 1:20 PM
the stack I'm looking at so far to address these needs, respectively:

1. any of several distributed stores like ScyllaDB or CockroachDB (those focus on different corners of the CAP theorem) in conjunction with something like Consul (preferred) or etcd
2. a combination of compute at the data (i.e., shard-level compute), something like mapreduce (e.g., the Gleam project), and #3, below
3. some sort of Functions aaS like fission.io that is capable of running code containerized code that is produced elsewhere is ideal (most flexibility at the science end, least responsibility at the infrastructure end)
4. looking at something like Vue.js and something akin to Bootstrap here
5. fast messaging is critical for this; oddly, choice of implementation here is often influenced by language and available libraries: I'm looking very seriously at NATS.io
