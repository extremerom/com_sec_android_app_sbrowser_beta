.class public Lcom/sec/android/app/sbrowser/promotion/model/ItemLoader;
.super Lcom/sec/android/app/sbrowser/promotion/model/DataLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/sbrowser/promotion/model/DataLoader<",
        "Ljava/util/HashMap<",
        "Lcom/sec/android/app/sbrowser/promotion/model/Category;",
        "Ljava/util/ArrayList<",
        "Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem;",
        ">;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/ExecutorService;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/promotion/model/DataLoader;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createData(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/promotion/model/ItemLoader;->createData(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public createData(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 9
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/HashMap<",
            "Lcom/sec/android/app/sbrowser/promotion/model/Category;",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem;",
            ">;>;"
        }
    .end annotation

    const-string p0, ""

    if-nez p1, :cond_0

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/promotion/model/Category;->fromString(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/promotion/model/Category;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/sbrowser/promotion/model/Category;->UNKNOWN:Lcom/sec/android/app/sbrowser/promotion/model/Category;

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_7

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    const-string v7, "name"

    invoke-virtual {v6, v7, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_2

    :cond_4
    const-string v8, "action"

    invoke-virtual {v6, v8, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_2

    :cond_5
    new-instance v8, Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem$Builder;

    invoke-direct {v8}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem$Builder;-><init>()V

    invoke-virtual {v8, v7}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem$Builder;->setName(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem$Builder;->setAction(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem$Builder;->build()Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem;

    move-result-object v6

    if-nez v6, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_3

    :cond_7
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "update error : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "[Promotion]"

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->B(Lorg/json/JSONException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    return-object v0
.end method

.method public update()V
    .locals 1

    const-string v0, "promotionItems.json"

    invoke-super {p0, v0}, Lcom/sec/android/app/sbrowser/promotion/model/DataLoader;->update(Ljava/lang/String;)V

    return-void
.end method
