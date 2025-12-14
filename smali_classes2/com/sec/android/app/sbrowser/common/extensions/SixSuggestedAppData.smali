.class public Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;
.super Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;",
        "Ljava/lang/Comparable<",
        "Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;",
        ">;"
    }
.end annotation


# instance fields
.field private mIconImgURL:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "iconImgURL"
    .end annotation
.end field

.field private mIsShowN:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "show_N_badge"
    .end annotation
.end field

.field private mPickOrder:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pick_order"
    .end annotation
.end field


# virtual methods
.method public compareTo(Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;)I
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;->mPickOrder:I

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;->getPickOrder()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;->mPickOrder:I

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;->getPickOrder()I

    move-result p1

    if-ge p0, p1, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;->compareTo(Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;->mPickOrder:I

    iget p1, p1, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;->mPickOrder:I

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getIconImgURL()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;->mIconImgURL:Ljava/lang/String;

    return-object p0
.end method

.method public getPickOrder()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;->mPickOrder:I

    return p0
.end method

.method public hashCode()I
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public isToBeFixed()Z
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;->mPickOrder:I

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isToShowNBadge()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;->mIsShowN:Z

    return p0
.end method

.method public setIconImgURL(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;->mIconImgURL:Ljava/lang/String;

    return-void
.end method
