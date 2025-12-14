.class Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallbackWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;


# instance fields
.field private mCallback:Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;

.field private final mGlobalConfigFeature:Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;

.field private final mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallbackWrapper;->mGlobalConfigFeature:Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallbackWrapper;->mKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallbackWrapper;->mCallback:Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;

    return-void
.end method

.method private updateETagIfNecessary(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallbackWrapper;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p2, p2, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;->responseHeaders:Ljava/util/Map;

    if-nez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    const-string v0, "ETag"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    :goto_0
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_2

    :cond_3
    :goto_1
    const-string p2, ""

    :goto_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallbackWrapper;->mGlobalConfigFeature:Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallbackWrapper;->mKey:Ljava/lang/String;

    invoke-interface {v0, p1, p0, p2}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;->setETag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public onFailed(Landroid/content/Context;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallbackWrapper;->mGlobalConfigFeature:Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;->getFeatureName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallbackWrapper;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FetchCallbackWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallbackWrapper;->mCallback:Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;->onFailed(Landroid/content/Context;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallbackWrapper;->mCallback:Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;

    return-void
.end method

.method public onFetched(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fetched "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallbackWrapper;->mGlobalConfigFeature:Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;->getFeatureName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallbackWrapper;->mKey:Ljava/lang/String;

    const-string v2, "FetchCallbackWrapper"

    invoke-static {v0, v1, v2}, Lt/b;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallbackWrapper;->mCallback:Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;->onFetched(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallbackWrapper;->mCallback:Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallbackWrapper;->updateETagIfNecessary(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;)V

    :cond_1
    return-void
.end method
