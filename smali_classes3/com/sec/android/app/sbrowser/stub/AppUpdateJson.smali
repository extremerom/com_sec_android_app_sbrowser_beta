.class public Lcom/sec/android/app/sbrowser/stub/AppUpdateJson;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mFakeVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fake"
    .end annotation
.end field

.field private mForced:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "force"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecommend:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recommend"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTest:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "testOnly"
    .end annotation
.end field

.field private mVersion:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version"
    .end annotation
.end field


# virtual methods
.method public getFakeCurrentVerion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/stub/AppUpdateJson;->mFakeVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getForcedVersions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/stub/AppUpdateJson;->mForced:Ljava/util/List;

    return-object p0
.end method

.method public getRecommendedVersions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/stub/AppUpdateJson;->mRecommend:Ljava/util/List;

    return-object p0
.end method

.method public getTestCheck()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/stub/AppUpdateJson;->mTest:Ljava/lang/String;

    return-object p0
.end method

.method public getVersion()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/stub/AppUpdateJson;->mVersion:I

    return p0
.end method
