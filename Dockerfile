FROM ansibleplaybookbundle/apb-base:galaxy

LABEL "com.redhat.apb.spec"=\
"dmVyc2lvbjogMS4wCm5hbWU6IHZpcnR1YWxpemF0aW9uCmRlc2NyaXB0aW9uOiBLdWJlVmlydCBp\
bnN0YWxsZXIKYmluZGFibGU6IEZhbHNlCmFzeW5jOiBvcHRpb25hbAptZXRhZGF0YToKICBkaXNw\
bGF5TmFtZTogS3ViZXZpcnQKICBsb25nRGVzY3JpcHRpb246IHwKICAgICBLdWJlVmlydCBlbmFi\
bGVzIHRoZSBtaWdyYXRpb24gb2YgZXhpc3RpbmcgdmlydHVhbGl6ZWQgd29ya2xvYWRzIGRpcmVj\
dGx5IGludG8gdGhlIGRldmVsb3BtZW50IHdvcmtmbG93cyBzdXBwb3J0ZWQgYnkgS3ViZXJuZXRl\
cy4KCiAgICAgVGhpcyBwcm92aWRlcyBhIHBhdGggdG8gbW9yZSByYXBpZCBhcHBsaWNhdGlvbiBt\
b2Rlcm5pemF0aW9uIGJ5OgogICAgICAgICAtIFN1cHBvcnRpbmcgZGV2ZWxvcG1lbnQgb2YgbmV3\
IG1pY3Jvc2VydmljZSBhcHBsaWNhdGlvbnMgaW4gY29udGFpbmVycyB0aGF0IGludGVyYWN0IHdp\
dGggZXhpc3RpbmcgdmlydHVhbGl6ZWQgYXBwbGljYXRpb25zLgogICAgICAgICAtIENvbWJpbmlu\
ZyBleGlzdGluZyB2aXJ0dWFsaXplZCB3b3JrbG9hZHMgd2l0aCBuZXcgY29udGFpbmVyIHdvcmts\
b2FkcyBvbiB0aGUgc2FtZSBwbGF0Zm9ybSwgdGhlcmVieSBtYWtpbmcgaXQgZWFzaWVyIHRvIGRl\
Y29tcG9zZSBtb25vbGl0aGljIHZpcnR1YWxpemVkIHdvcmtsb2FkcyBpbnRvIGNvbnRhaW5lcnMg\
b3ZlciB0aW1lLgogIGRvY3VtZW50YXRpb25Vcmw6IGh0dHBzOi8vZ2l0aHViLmNvbS9rdWJldmly\
dC9rdWJldmlydC9ibG9iL21hc3Rlci9SRUFETUUubWQKICBpbWFnZVVybDogaHR0cHM6Ly9jZG4u\
cGJyZC5jby9pbWFnZXMvSDVHdXRkNy5wbmcKICBwcm92aWRlckRpc3BsYXlOYW1lOiAiUmVkIEhh\
dCwgSW5jLiIKcGxhbnM6CiAgLSBuYW1lOiBkZWZhdWx0CiAgICBkZXNjcmlwdGlvbjogRGVmYXVs\
dCBkZXBsb3ltZW50IHBsYW4gZm9yIGt1YmV2aXJ0LWFwYiB3aXRoIG5vIHN0b3JhZ2UKICAgIG1l\
dGFkYXRhOgogICAgICBkaXNwbGF5TmFtZTogRGVmYXVsdAogICAgICBsb25nRGVzY3JpcHRpb246\
IFRoaXMgcGxhbiBwcm92aWRlcyBrdWJldmlydCB3aXRoIG5vIHN0b3JhZ2UKICAgIGZyZWU6IFRy\
dWUKICAgIHBhcmFtZXRlcnM6CiAgICAgIC0gdGl0bGU6IE9wZW5TaGlmdCBBZG1pbiBVc2VyCiAg\
ICAgICAgbmFtZTogYWRtaW5fdXNlcgogICAgICAgIHR5cGU6IHN0cmluZwogICAgICAgIHJlcXVp\
cmVkOiB0cnVlCiAgICAgIC0gdGl0bGU6IE9wZW5TaGlmdCBBZG1pbiBQYXNzd29yZAogICAgICAg\
IG5hbWU6IGFkbWluX3Bhc3N3b3JkCiAgICAgICAgdHlwZTogc3RyaW5nCiAgICAgICAgcmVxdWly\
ZWQ6IHRydWUKICAgICAgICBkaXNwbGF5X3R5cGU6IHBhc3N3b3JkCiAgICAgIC0gbmFtZTogdmVy\
c2lvbgogICAgICAgIHRpdGxlOiBWZXJzaW9uCiAgICAgICAgZGVmYXVsdDogMC40LjEtYWxwaGEu\
MgogICAgICAgIGVudW06IFsnMC40LjEtYWxwaGEuMicsICcwLjQuMS1hbHBoYS4xJywgJzAuNC4w\
JywgJzAuMy4wJywgJzAuMi4wJywgJzAuMS4wJ10KICAgICAgICB0eXBlOiBlbnVtCiAgICAgIC0g\
bmFtZTogc3RvcmFnZV9yb2xlCiAgICAgICAgdGl0bGU6IEJhY2tlbmQgU3RvcmFnZQogICAgICAg\
IGRlZmF1bHQ6IHN0b3JhZ2Utbm9uZQogICAgICAgIGVudW06IFsnc3RvcmFnZS1ub25lJ10KICAg\
ICAgICB0eXBlOiBlbnVtCiAgLSBuYW1lOiBnbHVzdGVyCiAgICBkZXNjcmlwdGlvbjogRGVwbG95\
bWVudCBwbGFuIHdpdGggR2x1c3RlciBzdG9yYWdlCiAgICBtZXRhZGF0YToKICAgICAgZGlzcGxh\
eU5hbWU6IEt1YmVWaXJ0IHdpdGggR2x1c3RlciBTdG9yYWdlCiAgICAgIGxvbmdEZXNjcmlwdGlv\
bjogVGhpcyBwbGFuIHByb3ZpZGVzIGt1YmV2aXJ0IHdpdGggR2x1c3RlciBzdG9yYWdlCiAgICBm\
cmVlOiBUcnVlCiAgICBwYXJhbWV0ZXJzOgogICAgICAtIHRpdGxlOiBPcGVuU2hpZnQgQWRtaW4g\
VXNlcgogICAgICAgIG5hbWU6IGFkbWluX3VzZXIKICAgICAgICB0eXBlOiBzdHJpbmcKICAgICAg\
ICByZXF1aXJlZDogdHJ1ZQogICAgICAtIHRpdGxlOiBPcGVuU2hpZnQgQWRtaW4gUGFzc3dvcmQK\
ICAgICAgICBuYW1lOiBhZG1pbl9wYXNzd29yZAogICAgICAgIHR5cGU6IHN0cmluZwogICAgICAg\
IHJlcXVpcmVkOiB0cnVlCiAgICAgICAgZGlzcGxheV90eXBlOiBwYXNzd29yZAogICAgICAtIG5h\
bWU6IHZlcnNpb24KICAgICAgICB0aXRsZTogVmVyc2lvbgogICAgICAgIGRlZmF1bHQ6IDAuNC4x\
LWFscGhhLjIKICAgICAgICBlbnVtOiBbJzAuNC4xLWFscGhhLjInLCAnMC40LjEtYWxwaGEuMScs\
ICcwLjQuMCcsICcwLjMuMCcsICcwLjIuMCcsICcwLjEuMCddCiAgICAgICAgdHlwZTogZW51bQog\
ICAgICAtIG5hbWU6IHN0b3JhZ2Vfcm9sZQogICAgICAgIHRpdGxlOiBCYWNrZW5kIFN0b3JhZ2UK\
ICAgICAgICBkZWZhdWx0OiBzdG9yYWdlLWdsdXN0ZXJmcwogICAgICAgIGVudW06IFsnc3RvcmFn\
ZS1nbHVzdGVyZnMnXQogICAgICAgIHR5cGU6IGVudW0KICAtIG5hbWU6IHN0b3JhZ2UtZGVtbwog\
ICAgZGVzY3JpcHRpb246IERlcGxveW1lbnQgcGxhbiB3aXRoIGVwaGVtZXJhbCBzdG9yYWdlCiAg\
ICBtZXRhZGF0YToKICAgICAgZGlzcGxheU5hbWU6IEt1YmVWaXJ0IHdpdGggZXBoZW1lcmFsIFN0\
b3JhZ2UKICAgICAgbG9uZ0Rlc2NyaXB0aW9uOiBUaGlzIHBsYW4gcHJvdmlkZXMga3ViZXZpcnQg\
d2l0aCBlcGhlbWVyYWwgc3RvcmFnZQogICAgZnJlZTogVHJ1ZQogICAgcGFyYW1ldGVyczoKICAg\
ICAgLSB0aXRsZTogT3BlblNoaWZ0IEFkbWluIFVzZXIKICAgICAgICBuYW1lOiBhZG1pbl91c2Vy\
CiAgICAgICAgdHlwZTogc3RyaW5nCiAgICAgICAgcmVxdWlyZWQ6IHRydWUKICAgICAgLSB0aXRs\
ZTogT3BlblNoaWZ0IEFkbWluIFBhc3N3b3JkCiAgICAgICAgbmFtZTogYWRtaW5fcGFzc3dvcmQK\
ICAgICAgICB0eXBlOiBzdHJpbmcKICAgICAgICByZXF1aXJlZDogdHJ1ZQogICAgICAgIGRpc3Bs\
YXlfdHlwZTogcGFzc3dvcmQKICAgICAgLSBuYW1lOiB2ZXJzaW9uCiAgICAgICAgdGl0bGU6IFZl\
cnNpb24KICAgICAgICBkZWZhdWx0OiAwLjQuMS1hbHBoYS4yCiAgICAgICAgZW51bTogWycwLjQu\
MS1hbHBoYS4yJywgJzAuNC4xLWFscGhhLjEnLCAnMC40LjAnLCAnMC4zLjAnLCAnMC4yLjAnLCAn\
MC4xLjAnXQogICAgICAgIHR5cGU6IGVudW0KICAgICAgLSBuYW1lOiBzdG9yYWdlX3JvbGUKICAg\
ICAgICB0aXRsZTogQmFja2VuZCBTdG9yYWdlCiAgICAgICAgZGVmYXVsdDogc3RvcmFnZS1kZW1v\
CiAgICAgICAgZW51bTogWydzdG9yYWdlLWRlbW8nXQogICAgICAgIHR5cGU6IGVudW0KICAtIG5h\
bWU6IGNpbmRlcgogICAgZGVzY3JpcHRpb246IERlcGxveW1lbnQgcGxhbiBmb3Iga3ViZXZpcnQt\
YXBiIHdpdGggQ2luZGVyIGJhY2tlbmQKICAgIG1ldGFkYXRhOgogICAgICBkaXNwbGF5TmFtZTog\
S3ViZVZpcnQgd2l0aCBDaW5kZXIgYmFja2VuZAogICAgICBsb25nRGVzY3JpcHRpb246IFRoaXMg\
cGxhbiBwcm92aWRlcyBrdWJldmlydCB3aXRoIENpbmRlciBiYWNrZW5kCiAgICBmcmVlOiBUcnVl\
CiAgICBwYXJhbWV0ZXJzOgogICAgICAtIHRpdGxlOiBPcGVuU2hpZnQgQWRtaW4gVXNlcgogICAg\
ICAgIG5hbWU6IGFkbWluX3VzZXIKICAgICAgICB0eXBlOiBzdHJpbmcKICAgICAgICByZXF1aXJl\
ZDogdHJ1ZQogICAgICAtIHRpdGxlOiBPcGVuU2hpZnQgQWRtaW4gUGFzc3dvcmQKICAgICAgICBu\
YW1lOiBhZG1pbl9wYXNzd29yZAogICAgICAgIHR5cGU6IHN0cmluZwogICAgICAgIHJlcXVpcmVk\
OiB0cnVlCiAgICAgICAgZGlzcGxheV90eXBlOiBwYXNzd29yZAogICAgICAtIG5hbWU6IHZlcnNp\
b24KICAgICAgICB0aXRsZTogVmVyc2lvbgogICAgICAgIGRlZmF1bHQ6IDAuNC4xLWFscGhhLjIK\
ICAgICAgICBlbnVtOiBbJzAuNC4xLWFscGhhLjInLCAnMC40LjEtYWxwaGEuMScsICcwLjQuMCcs\
ICcwLjMuMCcsICcwLjIuMCcsICcwLjEuMCddCiAgICAgICAgdHlwZTogZW51bQogICAgICAtIG5h\
bWU6IHN0b3JhZ2Vfcm9sZQogICAgICAgIHRpdGxlOiBCYWNrZW5kIFN0b3JhZ2UKICAgICAgICBk\
ZWZhdWx0OiBjaW5kZXIKICAgICAgICBlbnVtOiBbJ2NpbmRlciddCiAgICAgICAgdHlwZTogZW51\
bQo="



ENV APB_ACTION_PATH="kubevirt-ansible/playbooks/kubevirt.yml"
COPY requirements.yml /opt/ansible/requirements.yml
COPY inventory /etc/ansible/hosts

RUN ansible-galaxy install -r /opt/ansible/requirements.yml
RUN chmod -R g=u /opt/{ansible,apb} /etc/ansible/roles

USER apb
