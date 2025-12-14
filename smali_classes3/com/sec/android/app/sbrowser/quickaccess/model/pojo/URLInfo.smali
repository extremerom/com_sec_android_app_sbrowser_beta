.class public Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/URLInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mFavIconExists:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "favIconExists"
    .end annotation
.end field

.field public mIsSpeciallyRemoved:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isSpeciallyRemoved"
    .end annotation
.end field

.field public mItemId:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "itemId"
    .end annotation
.end field

.field public mNumberOfTouchIcons:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "numberOfTouchIcons"
    .end annotation
.end field

.field public mPredominantColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "predominantColor"
    .end annotation
.end field

.field public mSiteName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "siteName"
    .end annotation
.end field

.field public mSiteUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "siteUrl"
    .end annotation
.end field

.field public mTouchIcons:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "touchIcons"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/TouchIcon;",
            ">;"
        }
    .end annotation
.end field

.field public mTouchIconsExists:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "touchIconsExists"
    .end annotation
.end field


# virtual methods
.method public getTouchIconUrl()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/URLInfo;->mTouchIcons:Ljava/util/List;

    const-string v1, ""

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/URLInfo;->mTouchIcons:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v2, v0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/TouchIcon;

    iget-boolean v4, v3, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/TouchIcon;->mIsAdministered:Z

    if-eqz v4, :cond_2

    iget-object p0, v3, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/TouchIcon;->mIconPath:Ljava/lang/String;

    return-object p0

    :cond_2
    iget-object v4, v3, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/TouchIcon;->mIconSize:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/TouchIcon;->mIconSize:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/TouchIcon;->mIconSize:Ljava/lang/String;

    :cond_3
    iget-object v4, v3, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/TouchIcon;->mIconSize:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-le v4, v2, :cond_1

    iget-object v1, v3, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/TouchIcon;->mIconPath:Ljava/lang/String;

    move v2, v4

    goto :goto_0

    :cond_4
    :goto_1
    return-object v1
.end method
