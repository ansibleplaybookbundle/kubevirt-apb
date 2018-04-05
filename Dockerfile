FROM ansibleplaybookbundle/apb-base:galaxy

LABEL "com.redhat.apb.spec"=\
"dmVyc2lvbjogMS4wCm5hbWU6IGt1YmV2aXJ0LWFwYgpkZXNjcmlwdGlvbjogS3ViZVZpcnQgaW5z\
dGFsbGVyCmJpbmRhYmxlOiBGYWxzZQphc3luYzogb3B0aW9uYWwKbWV0YWRhdGE6CiAgZGlzcGxh\
eU5hbWU6IEt1YmV2aXJ0CiAgaW1hZ2VVcmw6IGh0dHBzOi8vY2RuLnBicmQuY28vaW1hZ2VzL0g1\
R3V0ZDcucG5nCnBsYW5zOgogIC0gbmFtZTogZGVmYXVsdAogICAgZGVzY3JpcHRpb246IERlZmF1\
bHQgZGVwbG95bWVudCBwbGFuIGZvciBrdWJldmlydC1hcGIgd2l0aCBubyBzdG9yYWdlCiAgICBt\
ZXRhZGF0YToKICAgICAgZGlzcGxheU5hbWU6IERlZmF1bHQKICAgICAgbG9uZ0Rlc2NyaXB0aW9u\
OiBUaGlzIHBsYW4gcHJvdmlkZXMga3ViZXZpcnQgd2l0aCBubyBzdG9yYWdlCiAgICBmcmVlOiBU\
cnVlCiAgICBwYXJhbWV0ZXJzOgogICAgICAtIHRpdGxlOiBPcGVuc2hpZnQgQWRtaW4gVXNlcgog\
ICAgICAgIG5hbWU6IGFkbWluX3VzZXIKICAgICAgICB0eXBlOiBzdHJpbmcKICAgICAgICByZXF1\
aXJlZDogdHJ1ZQogICAgICAtIHRpdGxlOiBPcGVuc2hpZnQgQWRtaW4gUGFzc3dvcmQKICAgICAg\
ICBuYW1lOiBhZG1pbl9wYXNzd29yZAogICAgICAgIHR5cGU6IHN0cmluZwogICAgICAgIHJlcXVp\
cmVkOiB0cnVlCiAgICAgICAgZGlzcGxheV90eXBlOiBwYXNzd29yZAogICAgICAtIG5hbWU6IHRh\
ZwogICAgICAgIHRpdGxlOiBUYWcgdG8gdXNlCiAgICAgICAgdHlwZTogc3RyaW5nCiAgICAgICAg\
ZGVmYXVsdDogdjAuNC4wLWFscGhhLjEKICAgICAgLSBuYW1lOiBzdG9yYWdlX3JvbGUKICAgICAg\
ICB0aXRsZTogQmFja2VuZCBTdG9yYWdlCiAgICAgICAgZGVmYXVsdDogc3RvcmFnZS1ub25lCiAg\
ICAgICAgZW51bTogWydzdG9yYWdlLW5vbmUnXQogICAgICAgIHR5cGU6IGVudW0KICAtIG5hbWU6\
IGdsdXN0ZXIKICAgIGRlc2NyaXB0aW9uOiBEZXBsb3ltZW50IHBsYW4gd2l0aCBHbHVzdGVyIHN0\
b3JhZ2UKICAgIG1ldGFkYXRhOgogICAgICBkaXNwbGF5TmFtZTogS3ViZVZpcnQgd2l0aCBHbHVz\
dGVyIFN0b3JhZ2UKICAgICAgbG9uZ0Rlc2NyaXB0aW9uOiBUaGlzIHBsYW4gcHJvdmlkZXMga3Vi\
ZXZpcnQgd2l0aCBHbHVzdGVyIHN0b3JhZ2UKICAgIGZyZWU6IFRydWUKICAgIHBhcmFtZXRlcnM6\
CiAgICAgIC0gdGl0bGU6IE9wZW5zaGlmdCBBZG1pbiBVc2VyCiAgICAgICAgbmFtZTogYWRtaW5f\
dXNlcgogICAgICAgIHR5cGU6IHN0cmluZwogICAgICAgIHJlcXVpcmVkOiB0cnVlCiAgICAgIC0g\
dGl0bGU6IE9wZW5zaGlmdCBBZG1pbiBQYXNzd29yZAogICAgICAgIG5hbWU6IGFkbWluX3Bhc3N3\
b3JkCiAgICAgICAgdHlwZTogc3RyaW5nCiAgICAgICAgcmVxdWlyZWQ6IHRydWUKICAgICAgICBk\
aXNwbGF5X3R5cGU6IHBhc3N3b3JkCiAgICAgIC0gbmFtZTogdGFnCiAgICAgICAgdGl0bGU6IFRh\
ZyB0byB1c2UKICAgICAgICB0eXBlOiBzdHJpbmcKICAgICAgICBkZWZhdWx0OiB2MC40LjAtYWxw\
aGEuMQogICAgICAtIG5hbWU6IHN0b3JhZ2Vfcm9sZQogICAgICAgIHRpdGxlOiBCYWNrZW5kIFN0\
b3JhZ2UKICAgICAgICBkZWZhdWx0OiBzdG9yYWdlLWdsdXN0ZXJmcwogICAgICAgIGVudW06IFsn\
c3RvcmFnZS1nbHVzdGVyZnMnXQogICAgICAgIHR5cGU6IGVudW0KICAtIG5hbWU6IHN0b3JhZ2Ut\
ZGVtbwogICAgZGVzY3JpcHRpb246IERlcGxveW1lbnQgcGxhbiB3aXRoIGVwaGVtZXJhbCBzdG9y\
YWdlCiAgICBtZXRhZGF0YToKICAgICAgZGlzcGxheU5hbWU6IEt1YmVWaXJ0IHdpdGggZXBoZW1l\
cmFsIFN0b3JhZ2UKICAgICAgbG9uZ0Rlc2NyaXB0aW9uOiBUaGlzIHBsYW4gcHJvdmlkZXMga3Vi\
ZXZpcnQgd2l0aCBlcGhlbWVyYWwgc3RvcmFnZQogICAgZnJlZTogVHJ1ZQogICAgcGFyYW1ldGVy\
czoKICAgICAgLSB0aXRsZTogT3BlbnNoaWZ0IEFkbWluIFVzZXIKICAgICAgICBuYW1lOiBhZG1p\
bl91c2VyCiAgICAgICAgdHlwZTogc3RyaW5nCiAgICAgICAgcmVxdWlyZWQ6IHRydWUKICAgICAg\
LSB0aXRsZTogT3BlbnNoaWZ0IEFkbWluIFBhc3N3b3JkCiAgICAgICAgbmFtZTogYWRtaW5fcGFz\
c3dvcmQKICAgICAgICB0eXBlOiBzdHJpbmcKICAgICAgICByZXF1aXJlZDogdHJ1ZQogICAgICAg\
IGRpc3BsYXlfdHlwZTogcGFzc3dvcmQKICAgICAgLSBuYW1lOiB0YWcKICAgICAgICB0aXRsZTog\
VGFnIHRvIHVzZQogICAgICAgIHR5cGU6IHN0cmluZwogICAgICAgIGRlZmF1bHQ6IHYwLjQuMC1h\
bHBoYS4xCiAgICAgIC0gbmFtZTogc3RvcmFnZV9yb2xlCiAgICAgICAgdGl0bGU6IEJhY2tlbmQg\
U3RvcmFnZQogICAgICAgIGRlZmF1bHQ6IHN0b3JhZ2UtZGVtbwogICAgICAgIGVudW06IFsnc3Rv\
cmFnZS1kZW1vJ10KICAgICAgICB0eXBlOiBlbnVtCiAgLSBuYW1lOiBjaW5kZXIKICAgIGRlc2Ny\
aXB0aW9uOiBEZXBsb3ltZW50IHBsYW4gZm9yIGt1YmV2aXJ0LWFwYiB3aXRoIENpbmRlciBiYWNr\
ZW5kCiAgICBtZXRhZGF0YToKICAgICAgZGlzcGxheU5hbWU6IEt1YmVWaXJ0IHdpdGggQ2luZGVy\
IGJhY2tlbmQKICAgICAgbG9uZ0Rlc2NyaXB0aW9uOiBUaGlzIHBsYW4gcHJvdmlkZXMga3ViZXZp\
cnQgd2l0aCBDaW5kZXIgYmFja2VuZAogICAgZnJlZTogVHJ1ZQogICAgcGFyYW1ldGVyczoKICAg\
ICAgLSB0aXRsZTogT3BlbnNoaWZ0IEFkbWluIFVzZXIKICAgICAgICBuYW1lOiBhZG1pbl91c2Vy\
CiAgICAgICAgdHlwZTogc3RyaW5nCiAgICAgICAgcmVxdWlyZWQ6IHRydWUKICAgICAgLSB0aXRs\
ZTogT3BlbnNoaWZ0IEFkbWluIFBhc3N3b3JkCiAgICAgICAgbmFtZTogYWRtaW5fcGFzc3dvcmQK\
ICAgICAgICB0eXBlOiBzdHJpbmcKICAgICAgICByZXF1aXJlZDogdHJ1ZQogICAgICAgIGRpc3Bs\
YXlfdHlwZTogcGFzc3dvcmQKICAgICAgLSBuYW1lOiB0YWcKICAgICAgICB0aXRsZTogVGFnIHRv\
IHVzZQogICAgICAgIHR5cGU6IHN0cmluZwogICAgICAgIGRlZmF1bHQ6IHYwLjQuMC1hbHBoYS4x\
CiAgICAgIC0gbmFtZTogc3RvcmFnZV9yb2xlCiAgICAgICAgdGl0bGU6IEJhY2tlbmQgU3RvcmFn\
ZQogICAgICAgIGRlZmF1bHQ6IGNpbmRlcgogICAgICAgIGVudW06IFsnY2luZGVyJ10KICAgICAg\
ICB0eXBlOiBlbnVtCg=="


ENV APB_ACTION_PATH="kubevirt-ansible/playbooks/kubevirt.yml"
COPY requirements.yml /opt/ansible/requirements.yml

RUN ansible-galaxy install -r /opt/ansible/requirements.yml
RUN chmod -R g=u /opt/{ansible,apb} /etc/ansible/roles

USER apb
