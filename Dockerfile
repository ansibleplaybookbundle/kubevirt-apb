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
IGNucwogICAgZGVzY3JpcHRpb246IERlcGxveW1lbnQgcGxhbiB3aXRoIENOUwogICAgbWV0YWRh\
dGE6CiAgICAgIGRpc3BsYXlOYW1lOiBLdWJlVmlydCB3aXRoIENOUyBTdG9yYWdlCiAgICAgIGxv\
bmdEZXNjcmlwdGlvbjogVGhpcyBwbGFuIHByb3ZpZGVzIGt1YmV2aXJ0IHdpdGggQ05TIHN0b3Jh\
Z2UKICAgIGZyZWU6IFRydWUKICAgIHBhcmFtZXRlcnM6CiAgICAgIC0gdGl0bGU6IE9wZW5zaGlm\
dCBBZG1pbiBVc2VyCiAgICAgICAgbmFtZTogYWRtaW5fdXNlcgogICAgICAgIHR5cGU6IHN0cmlu\
ZwogICAgICAgIHJlcXVpcmVkOiB0cnVlCiAgICAgIC0gdGl0bGU6IE9wZW5zaGlmdCBBZG1pbiBQ\
YXNzd29yZAogICAgICAgIG5hbWU6IGFkbWluX3Bhc3N3b3JkCiAgICAgICAgdHlwZTogc3RyaW5n\
CiAgICAgICAgcmVxdWlyZWQ6IHRydWUKICAgICAgICBkaXNwbGF5X3R5cGU6IHBhc3N3b3JkCiAg\
ICAgIC0gbmFtZTogdGFnCiAgICAgICAgdGl0bGU6IFRhZyB0byB1c2UKICAgICAgICB0eXBlOiBz\
dHJpbmcKICAgICAgICBkZWZhdWx0OiB2MC40LjAtYWxwaGEuMQogICAgICAtIG5hbWU6IHN0b3Jh\
Z2Vfcm9sZQogICAgICAgIHRpdGxlOiBCYWNrZW5kIFN0b3JhZ2UKICAgICAgICBkZWZhdWx0OiBz\
dG9yYWdlLWNucwogICAgICAgIGVudW06IFsnc3RvcmFnZS1jbnMnXQogICAgICAgIHR5cGU6IGVu\
dW0KICAtIG5hbWU6IHN0b3JhZ2UtZGVtbwogICAgZGVzY3JpcHRpb246IERlcGxveW1lbnQgcGxh\
biB3aXRoIGVwaGVtZXJhbCBzdG9yYWdlCiAgICBtZXRhZGF0YToKICAgICAgZGlzcGxheU5hbWU6\
IEt1YmVWaXJ0IHdpdGggZXBoZW1lcmFsIFN0b3JhZ2UKICAgICAgbG9uZ0Rlc2NyaXB0aW9uOiBU\
aGlzIHBsYW4gcHJvdmlkZXMga3ViZXZpcnQgd2l0aCBlcGhlbWVyYWwgc3RvcmFnZQogICAgZnJl\
ZTogVHJ1ZQogICAgcGFyYW1ldGVyczoKICAgICAgLSB0aXRsZTogT3BlbnNoaWZ0IEFkbWluIFVz\
ZXIKICAgICAgICBuYW1lOiBhZG1pbl91c2VyCiAgICAgICAgdHlwZTogc3RyaW5nCiAgICAgICAg\
cmVxdWlyZWQ6IHRydWUKICAgICAgLSB0aXRsZTogT3BlbnNoaWZ0IEFkbWluIFBhc3N3b3JkCiAg\
ICAgICAgbmFtZTogYWRtaW5fcGFzc3dvcmQKICAgICAgICB0eXBlOiBzdHJpbmcKICAgICAgICBy\
ZXF1aXJlZDogdHJ1ZQogICAgICAgIGRpc3BsYXlfdHlwZTogcGFzc3dvcmQKICAgICAgLSBuYW1l\
OiB0YWcKICAgICAgICB0aXRsZTogVGFnIHRvIHVzZQogICAgICAgIHR5cGU6IHN0cmluZwogICAg\
ICAgIGRlZmF1bHQ6IHYwLjQuMC1hbHBoYS4xCiAgICAgIC0gbmFtZTogc3RvcmFnZV9yb2xlCiAg\
ICAgICAgdGl0bGU6IEJhY2tlbmQgU3RvcmFnZQogICAgICAgIGRlZmF1bHQ6IHN0b3JhZ2UtZGVt\
bwogICAgICAgIGVudW06IFsnc3RvcmFnZS1kZW1vJ10KICAgICAgICB0eXBlOiBlbnVtCiAgLSBu\
YW1lOiBjaW5kZXIKICAgIGRlc2NyaXB0aW9uOiBEZXBsb3ltZW50IHBsYW4gZm9yIGt1YmV2aXJ0\
LWFwYiB3aXRoIENpbmRlciBiYWNrZW5kCiAgICBtZXRhZGF0YToKICAgICAgZGlzcGxheU5hbWU6\
IEt1YmVWaXJ0IHdpdGggQ2luZGVyIGJhY2tlbmQKICAgICAgbG9uZ0Rlc2NyaXB0aW9uOiBUaGlz\
IHBsYW4gcHJvdmlkZXMga3ViZXZpcnQgd2l0aCBDaW5kZXIgYmFja2VuZAogICAgZnJlZTogVHJ1\
ZQogICAgcGFyYW1ldGVyczoKICAgICAgLSB0aXRsZTogT3BlbnNoaWZ0IEFkbWluIFVzZXIKICAg\
ICAgICBuYW1lOiBhZG1pbl91c2VyCiAgICAgICAgdHlwZTogc3RyaW5nCiAgICAgICAgcmVxdWly\
ZWQ6IHRydWUKICAgICAgLSB0aXRsZTogT3BlbnNoaWZ0IEFkbWluIFBhc3N3b3JkCiAgICAgICAg\
bmFtZTogYWRtaW5fcGFzc3dvcmQKICAgICAgICB0eXBlOiBzdHJpbmcKICAgICAgICByZXF1aXJl\
ZDogdHJ1ZQogICAgICAgIGRpc3BsYXlfdHlwZTogcGFzc3dvcmQKICAgICAgLSBuYW1lOiB0YWcK\
ICAgICAgICB0aXRsZTogVGFnIHRvIHVzZQogICAgICAgIHR5cGU6IHN0cmluZwogICAgICAgIGRl\
ZmF1bHQ6IHYwLjQuMC1hbHBoYS4xCiAgICAgIC0gbmFtZTogc3RvcmFnZV9yb2xlCiAgICAgICAg\
dGl0bGU6IEJhY2tlbmQgU3RvcmFnZQogICAgICAgIGRlZmF1bHQ6IGNpbmRlcgogICAgICAgIGVu\
dW06IFsnY2luZGVyJ10KICAgICAgICB0eXBlOiBlbnVtCg=="


ENV APB_ACTION_PATH="kubevirt-ansible/playbooks/kubevirt.yml"
COPY requirements.yml /opt/ansible/requirements.yml

RUN ansible-galaxy install -r /opt/ansible/requirements.yml
RUN chmod -R g=u /opt/{ansible,apb} /etc/ansible/roles

USER apb
