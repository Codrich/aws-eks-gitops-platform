# EKS Failure Simulation — Pod Self-Healing

## Objective
Validate that Kubernetes automatically recovers from pod failure without manual intervention.

## Environment
- **Cluster:** `eks-gitops-cluster`
- **Region:** `us-east-1`
- **Deployment:** `nginx` (2 replicas)
- **Node:** `ip-10-0-11-169.ec2.internal`

---

## Test Executed

### Step 1 — Verify baseline
```bash
kubectl get pods
```
NAME                     READY   STATUS    RESTARTS   AGE
nginx-676b6c5bbc-5d2rf   1/1     Running   0          43s
nginx-676b6c5bbc-nc9xg   1/1     Running   0          102s

Replacement pod `5d2rf` reached Running state automatically.

---

## Event Timeline

| Time | Event | Detail |
|------|-------|--------|
| t+0s | Pod deleted | `nginx-676b6c5bbc-2kt9v` — Stopping container |
| t+1s | ReplicaSet reacted | Created replacement pod `nginx-676b6c5bbc-5d2rf` |
| t+1s | Scheduled | Pod assigned to `ip-10-0-11-169.ec2.internal` |
| t+1s | Image pulled | Cached image pulled in **154ms** |
| t+2s | Running | Replacement pod fully running |

**Total recovery time: < 2 seconds**

---

## Result
✅ Kubernetes self-healing validated. The ReplicaSet controller detected the pod deletion and immediately provisioned a replacement — zero manual intervention required, desired state restored in under 2 seconds.

---

## Interview Talking Point
> *"Tested system resilience by simulating pod failure on an EKS cluster and validating Kubernetes self-healing capabilities. The ReplicaSet controller detected the failure and restored the desired replica count in under 2 seconds, with the replacement pod pulling a cached image in 154ms."*