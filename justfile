switch:
    nh os switch

boot:
    nh os boot

test:
    nh os test

update:
    nix flake update
    git add flake.lock
    git commit -m "global(flake.lock): update flake lock"
    git push
