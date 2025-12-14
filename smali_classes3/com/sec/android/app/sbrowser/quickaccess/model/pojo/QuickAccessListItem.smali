.class public Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/QuickAccessListItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mCountry:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "country"
    .end annotation
.end field

.field public mItemCount:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "itemCount"
    .end annotation
.end field

.field public mItems:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "items"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/Item;",
            ">;"
        }
    .end annotation
.end field

.field public mOperator:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "operator"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/QuickAccessListItem;->mItems:Ljava/util/List;

    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/QuickAccessListItem;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-nez p0, :cond_0

    new-instance p0, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/QuickAccessListItem;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/QuickAccessListItem;-><init>()V

    return-object p0

    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/QuickAccessListItem$1;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/QuickAccessListItem$1;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/QuickAccessListItem;

    if-nez p0, :cond_1

    new-instance p0, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/QuickAccessListItem;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/QuickAccessListItem;-><init>()V
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    return-object p0

    :goto_1
    const-string v0, "QuickAccessListItem"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/QuickAccessListItem;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/QuickAccessListItem;-><init>()V

    return-object p0
.end method


# virtual methods
.method public toQuickAccessIconItemList()Ljava/util/List;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/QuickAccessListItem;->mItems:Ljava/util/List;

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/QuickAccessListItem;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    new-instance v2, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    invoke-direct {v2}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/QuickAccessListItem;->mItems:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/Item;

    iget-object v4, v3, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/Item;->mUrlInfo:Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/URLInfo;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/URLInfo;->mSiteUrl:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessQueryParameterUtils;->injectIUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->setUrl(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/Item;->mUrlInfo:Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/URLInfo;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/URLInfo;->mSiteName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->setTitle(Ljava/lang/String;)V

    sget-object v4, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;->DEFAULT_SERVER:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->setType(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;)V

    iget-object v4, v3, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/Item;->mUrlInfo:Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/URLInfo;

    iget-boolean v4, v4, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/URLInfo;->mIsSpeciallyRemoved:Z

    invoke-virtual {v2, v4}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->setSpeciallyRemoved(Z)V

    iget-object v4, v3, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/Item;->mUrlInfo:Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/URLInfo;

    iget v4, v4, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/URLInfo;->mItemId:I

    invoke-virtual {v2, v4}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->setItemId(I)V

    iget-object v4, v3, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/Item;->mUrlInfo:Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/URLInfo;

    iget-boolean v5, v4, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/URLInfo;->mTouchIconsExists:Z

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/URLInfo;->getTouchIconUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->setTouchIconUrl(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v4, ""

    invoke-virtual {v2, v4}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->setTouchIconUrl(Ljava/lang/String;)V

    :goto_1
    iget-object v4, v3, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/Item;->mUrlInfo:Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/URLInfo;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/URLInfo;->mPredominantColor:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/Item;->mUrlInfo:Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/URLInfo;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/URLInfo;->mPredominantColor:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->setDominantColor(I)V

    :cond_2
    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->setPosition(I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method
