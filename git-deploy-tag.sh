# 현재 tag 정보 조회
TAG_BRANCH=`git describe --tags --abbrev=0`
git checkout $TAG_BRANCH

# 운영 배포를 위한 tag 생성
NEW_TAG=$(echo $TAG_BRANCH | cut -d '_' -f1)
git tag $NEW_TAG -m "Release $NEW_TAG"
git push origin $NEW_TAG
