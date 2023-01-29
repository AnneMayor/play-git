# 
TAG_BRANCH=`git describe --tags --abbrev=0`
git checkout $TAG_BRANCH

#
NEW_TAG=$(echo $TAG_BRANCH | cut -d '_' -f1)
git tag $NEW_TAG -m "Release $NEW_TAG"
git push origin $NEW_TAG

#
