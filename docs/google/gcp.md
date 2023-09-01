

gcloud compute images list

gcloud compute instances create demokitamd \
    --image=ubuntu-2204-jammy-v20230829 \
    --boot-disk-size 20GB \
    --max-run-duration 1h