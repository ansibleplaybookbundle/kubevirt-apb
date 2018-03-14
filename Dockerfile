FROM ansibleplaybookbundle/apb-base:galaxy

LABEL "com.redhat.apb.spec"=\
"dmVyc2lvbjogMS4wCm5hbWU6IGt1YmV2aXJ0LWFwYgpkZXNjcmlwdGlvbjogQVBCIGZvciBtYW5h\
Z2luZyBLdWJlVmlydCBkZXBsb3ltZW50cwpiaW5kYWJsZTogRmFsc2UKYXN5bmM6IG9wdGlvbmFs\
Cm1ldGFkYXRhOgogIGRpc3BsYXlOYW1lOiBrdWJldmlydCAoQVBCKQogIGltYWdlVXJsOiBodHRw\
czovL2Nkbi5wYnJkLmNvL2ltYWdlcy9INUd1dGQ3LnBuZwpwbGFuczoKICAtIG5hbWU6IGRlZmF1\
bHQKICAgIGRlc2NyaXB0aW9uOiBEZWZhdWx0IGRlcGxveW1lbnQgcGxhbiBmb3Iga3ViZXZpcnQt\
YXBiIHdpdGggbm8gc3RvcmFnZQogICAgbWV0YWRhdGE6CiAgICAgIGRpc3BsYXlOYW1lOiBEZWZh\
dWx0CiAgICAgIGxvbmdEZXNjcmlwdGlvbjogVGhpcyBwbGFuIHByb3ZpZGVzIGt1YmV2aXJ0IHdp\
dGggbm8gc3RvcmFnZQogICAgZnJlZTogVHJ1ZQogICAgcGFyYW1ldGVyczoKICAgICAgLSB0aXRs\
ZTogT3BlbnNoaWZ0IEFkbWluIFVzZXIKICAgICAgICBuYW1lOiBhZG1pbl91c2VyCiAgICAgICAg\
dHlwZTogc3RyaW5nCiAgICAgICAgcmVxdWlyZWQ6IHRydWUKICAgICAgLSB0aXRsZTogT3BlbnNo\
aWZ0IEFkbWluIFBhc3N3b3JkCiAgICAgICAgbmFtZTogYWRtaW5fcGFzc3dvcmQKICAgICAgICB0\
eXBlOiBzdHJpbmcKICAgICAgICByZXF1aXJlZDogdHJ1ZQogICAgICAgIGRpc3BsYXlfdHlwZTog\
cGFzc3dvcmQKICAgICAgLSBuYW1lOiB0YWcKICAgICAgICB0aXRsZTogVGFnIHRvIHVzZQogICAg\
ICAgIHR5cGU6IHN0cmluZwogICAgICAgIGRlZmF1bHQ6IHYwLjMuMAogIC0gbmFtZTogc3RvcmFn\
ZS1kZW1vCiAgICBkZXNjcmlwdGlvbjogRGVwbG95bWVudCBwbGFuIHdpdGggZXBoZW1lcmFsIHN0\
b3JhZ2UKICAgIG1ldGFkYXRhOgogICAgICBkaXNwbGF5TmFtZTogS3ViZVZpcnQgd2l0aCBDTlMg\
U3RvcmFnZQogICAgICBsb25nRGVzY3JpcHRpb246IFRoaXMgcGxhbiBwcm92aWRlcyBrdWJldmly\
dCB3aXRoIGVwaGVtZXJhbCBzdG9yYWdlCiAgICBmcmVlOiBUcnVlCiAgICBwYXJhbWV0ZXJzOgog\
ICAgICAtIHRpdGxlOiBPcGVuc2hpZnQgQWRtaW4gVXNlcgogICAgICAgIG5hbWU6IGFkbWluX3Vz\
ZXIKICAgICAgICB0eXBlOiBzdHJpbmcKICAgICAgICByZXF1aXJlZDogdHJ1ZQogICAgICAtIHRp\
dGxlOiBPcGVuc2hpZnQgQWRtaW4gUGFzc3dvcmQKICAgICAgICBuYW1lOiBhZG1pbl9wYXNzd29y\
ZAogICAgICAgIHR5cGU6IHN0cmluZwogICAgICAgIHJlcXVpcmVkOiB0cnVlCiAgICAgICAgZGlz\
cGxheV90eXBlOiBwYXNzd29yZAogICAgICAtIG5hbWU6IHRhZwogICAgICAgIHRpdGxlOiBUYWcg\
dG8gdXNlCiAgICAgICAgdHlwZTogc3RyaW5nCiAgICAgICAgZGVmYXVsdDogdjAuMy4wCiAgICAg\
IC0gbmFtZTogc3RvcmFnZV9yb2xlCiAgICAgICAgdGl0bGU6IEJhY2tlbmQgU3RvcmFnZQogICAg\
ICAgIGRlZmF1bHQ6IHN0b3JhZ2UtZGVtbwogICAgICAgIGVudW06IFsnc3RvcmFnZS1kZW1vJ10K\
ICAgICAgICB0eXBlOiBlbnVtCiAgLSBuYW1lOiBDTlMKICAgIGRlc2NyaXB0aW9uOiBEZXBsb3lt\
ZW50IHBsYW4gd2l0aCBDTlMKICAgIG1ldGFkYXRhOgogICAgICBkaXNwbGF5TmFtZTogS3ViZVZp\
cnQgd2l0aCBDTlMgU3RvcmFnZQogICAgICBsb25nRGVzY3JpcHRpb246IFRoaXMgcGxhbiBwcm92\
aWRlcyBrdWJldmlydCB3aXRoIENOUyBzdG9yYWdlCiAgICBmcmVlOiBUcnVlCiAgICBwYXJhbWV0\
ZXJzOgogICAgICAtIHRpdGxlOiBPcGVuc2hpZnQgQWRtaW4gVXNlcgogICAgICAgIG5hbWU6IGFk\
bWluX3VzZXIKICAgICAgICB0eXBlOiBzdHJpbmcKICAgICAgICByZXF1aXJlZDogdHJ1ZQogICAg\
ICAtIHRpdGxlOiBPcGVuc2hpZnQgQWRtaW4gUGFzc3dvcmQKICAgICAgICBuYW1lOiBhZG1pbl9w\
YXNzd29yZAogICAgICAgIHR5cGU6IHN0cmluZwogICAgICAgIHJlcXVpcmVkOiB0cnVlCiAgICAg\
ICAgZGlzcGxheV90eXBlOiBwYXNzd29yZAogICAgICAtIG5hbWU6IHRhZwogICAgICAgIHRpdGxl\
OiBUYWcgdG8gdXNlCiAgICAgICAgdHlwZTogc3RyaW5nCiAgICAgICAgZGVmYXVsdDogdjAuMy4w\
CiAgICAgIC0gbmFtZTogc3RvcmFnZV9yb2xlCiAgICAgICAgdGl0bGU6IEJhY2tlbmQgU3RvcmFn\
ZQogICAgICAgIGRlZmF1bHQ6IENOUwogICAgICAgIGVudW06IFsnQ05TJ10KICAgICAgICB0eXBl\
OiBlbnVtCiAgLSBuYW1lOiBDaW5kZXIKICAgIGRlc2NyaXB0aW9uOiBEZXBsb3ltZW50IHBsYW4g\
Zm9yIGt1YmV2aXJ0LWFwYiB3aXRoIENpbmRlciBiYWNrZW5kCiAgICBtZXRhZGF0YToKICAgICAg\
ZGlzcGxheU5hbWU6IEt1YmVWaXJ0IHdpdGggQ2luZGVyIGJhY2tlbmQKICAgICAgbG9uZ0Rlc2Ny\
aXB0aW9uOiBUaGlzIHBsYW4gcHJvdmlkZXMga3ViZXZpcnQgd2l0aCBDaW5kZXIgYmFja2VuZAog\
ICAgZnJlZTogVHJ1ZQogICAgcGFyYW1ldGVyczoKICAgICAgLSB0aXRsZTogT3BlbnNoaWZ0IEFk\
bWluIFVzZXIKICAgICAgICBuYW1lOiBhZG1pbl91c2VyCiAgICAgICAgdHlwZTogc3RyaW5nCiAg\
ICAgICAgcmVxdWlyZWQ6IHRydWUKICAgICAgLSB0aXRsZTogT3BlbnNoaWZ0IEFkbWluIFBhc3N3\
b3JkCiAgICAgICAgbmFtZTogYWRtaW5fcGFzc3dvcmQKICAgICAgICB0eXBlOiBzdHJpbmcKICAg\
ICAgICByZXF1aXJlZDogdHJ1ZQogICAgICAgIGRpc3BsYXlfdHlwZTogcGFzc3dvcmQKICAgICAg\
LSBuYW1lOiB0YWcKICAgICAgICB0aXRsZTogVGFnIHRvIHVzZQogICAgICAgIHR5cGU6IHN0cmlu\
ZwogICAgICAgIGRlZmF1bHQ6IHYwLjMuMAogICAgICAtIG5hbWU6IHN0b3JhZ2Vfcm9sZQogICAg\
ICAgIHRpdGxlOiBCYWNrZW5kIFN0b3JhZ2UKICAgICAgICBkZWZhdWx0OiBjaW5kZXIKICAgICAg\
ICBlbnVtOiBbJ2NpbmRlciddCiAgICAgICAgdHlwZTogZW51bQo="


ENV APB_ACTION_PATH="kubevirt-ansible/playbooks/kubevirt.yml"
COPY requirements.yml /opt/ansible/requirements.yml

RUN ansible-galaxy install -r /opt/ansible/requirements.yml
RUN chmod -R g=u /opt/{ansible,apb} /etc/ansible/roles

USER apb
