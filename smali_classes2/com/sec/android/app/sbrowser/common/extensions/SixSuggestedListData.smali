.class public Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedListData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mFixedSlots:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fixed_slots"
    .end annotation
.end field

.field private mIsForcedToRefresh:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "force_to_refresh"
    .end annotation
.end field

.field private mMaxSlots:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "max_suggested_slots"
    .end annotation
.end field

.field private mSuggestedApps:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "extensions_to_suggest"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateRate:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "update_rate_weeks"
    .end annotation
.end field


# virtual methods
.method public getIsForcedToRefresh()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedListData;->mIsForcedToRefresh:Z

    return p0
.end method

.method public getSuggestedExtList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedListData;->mSuggestedApps:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getSuggestedFixedSlots()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedListData;->mFixedSlots:I

    return p0
.end method

.method public getSuggestedMaxSlots()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedListData;->mMaxSlots:I

    return p0
.end method

.method public getSuggestedUpdateRate()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedListData;->mUpdateRate:I

    return p0
.end method
