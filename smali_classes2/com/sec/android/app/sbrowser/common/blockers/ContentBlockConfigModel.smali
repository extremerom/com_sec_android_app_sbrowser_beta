.class public Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mBannerMaxDisplayCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "promotion_banner_max_display_count"
    .end annotation
.end field

.field private mExtensionAppGroup:Ljava/util/Set;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "extension_app_group"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExtensionApps:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "extension_apps"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDefaultTurnOnEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "default_turn_on"
    .end annotation
.end field

.field private mIsEnabledForChinaGED:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enabled_for_china_ged"
    .end annotation
.end field

.field private mProvideNewBadge:Lcom/sec/android/app/sbrowser/common/blockers/ProvideNewBadge;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "provide_new_badge"
    .end annotation
.end field

.field private mUpdatePeriod:Lcom/sec/android/app/sbrowser/common/blockers/UpdatePeriod;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "update_period"
    .end annotation
.end field


# virtual methods
.method public getBannerMaxDisplayCount()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigModel;->mBannerMaxDisplayCount:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method public getExtensionAppGroup()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigModel;->mExtensionAppGroup:Ljava/util/Set;

    return-object p0
.end method

.method public getExtensionApps()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigModel;->mExtensionApps:Ljava/util/List;

    return-object p0
.end method

.method public getProvideNewBadge()Lcom/sec/android/app/sbrowser/common/blockers/ProvideNewBadge;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigModel;->mProvideNewBadge:Lcom/sec/android/app/sbrowser/common/blockers/ProvideNewBadge;

    return-object p0
.end method

.method public getUpdatePeriod()Lcom/sec/android/app/sbrowser/common/blockers/UpdatePeriod;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigModel;->mUpdatePeriod:Lcom/sec/android/app/sbrowser/common/blockers/UpdatePeriod;

    if-nez p0, :cond_0

    new-instance p0, Lcom/sec/android/app/sbrowser/common/blockers/UpdatePeriod;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/blockers/UpdatePeriod;-><init>()V

    :cond_0
    return-object p0
.end method

.method public isDefaultTurnOnEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigModel;->mIsDefaultTurnOnEnabled:Z

    return p0
.end method

.method public isEnabledForChinaGED()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigModel;->mIsEnabledForChinaGED:Z

    return p0
.end method
