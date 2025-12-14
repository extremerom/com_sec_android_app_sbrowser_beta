.class Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/global_config/GetConfigsMessage$MessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;->updateAll(Landroid/content/Context;Ljava/lang/String;ZLcom/sec/android/app/sbrowser/global_config/GlobalConfigDelegate;Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$UpdateInternalCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;

.field final synthetic val$delegate:Lcom/sec/android/app/sbrowser/global_config/GlobalConfigDelegate;

.field final synthetic val$iuid:Ljava/lang/String;

.field final synthetic val$parameterChanged:Z

.field final synthetic val$requestETag:Ljava/lang/String;

.field final synthetic val$requestParameter:Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;

.field final synthetic val$serverProfile:Ljava/lang/String;

.field final synthetic val$updateConfigCallback:Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$UpdateInternalCallback;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;Lcom/sec/android/app/sbrowser/global_config/GlobalConfigDelegate;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$UpdateInternalCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$2;->this$0:Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$2;->val$delegate:Lcom/sec/android/app/sbrowser/global_config/GlobalConfigDelegate;

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$2;->val$parameterChanged:Z

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$2;->val$serverProfile:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$2;->val$iuid:Ljava/lang/String;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$2;->val$requestETag:Ljava/lang/String;

    iput-object p7, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$2;->val$requestParameter:Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;

    iput-object p8, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$2;->val$updateConfigCallback:Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$UpdateInternalCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$2;->this$0:Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;->b(Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$2;->this$0:Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "global_config_preference"

    invoke-virtual {v0, p1, v3, v1, v2}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;->setLastUpdatedTimeStamp(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$2;->this$0:Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$2;->val$serverProfile:Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$2;->val$iuid:Ljava/lang/String;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$2;->val$requestETag:Ljava/lang/String;

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$2;->val$requestParameter:Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;

    move-object v5, p1

    move-object v10, p2

    move-object v11, p3

    invoke-static/range {v4 .. v11}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;->f(Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;Ljava/util/Map;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$2;->this$0:Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$2;->val$updateConfigCallback:Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$UpdateInternalCallback;

    invoke-static {p2, p1, p0, p3}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;->c(Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;Landroid/content/Context;Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$UpdateInternalCallback;Ljava/lang/String;)V

    return-void
.end method

.method public onHttpNotModified(Landroid/content/Context;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$2;->val$parameterChanged:Z

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$2;->this$0:Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$2;->val$updateConfigCallback:Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$UpdateInternalCallback;

    const-string v0, "FAILED : Invalid response - Cannot get 304 without etag"

    invoke-static {p2, p1, p0, v0}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;->c(Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;Landroid/content/Context;Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$UpdateInternalCallback;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$2;->this$0:Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, p1, v1, v2}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;->d(Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;Landroid/content/Context;J)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$2;->this$0:Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$2;->val$serverProfile:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$2;->val$iuid:Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$2;->val$requestETag:Ljava/lang/String;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$2;->val$requestParameter:Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;

    const-string v10, "SUCCESS : responseCode 304"

    move-object v4, p1

    move-object v9, p2

    invoke-static/range {v3 .. v10}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;->f(Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;Ljava/util/Map;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$2;->val$updateConfigCallback:Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$UpdateInternalCallback;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$UpdateInternalCallback;->onUpdated(Landroid/content/Context;)V

    return-void
.end method

.method public onSuccess(Landroid/content/Context;Ljava/util/Map;Lorg/json/JSONObject;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$2;->val$delegate:Lcom/sec/android/app/sbrowser/global_config/GlobalConfigDelegate;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$2;->val$parameterChanged:Z

    invoke-interface {v0, p1, p3, v1}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigDelegate;->storeConfigs(Landroid/content/Context;Lorg/json/JSONObject;Z)V

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "ETag"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2

    :cond_2
    :goto_1
    const-string v0, ""

    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$2;->this$0:Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;

    invoke-static {v1, p1, v0}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;->e(Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$2;->this$0:Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$2;->val$serverProfile:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$2;->val$iuid:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$2;->val$requestETag:Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$2;->val$requestParameter:Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;

    const-string v9, "SUCCESS : responseCode 200"

    move-object v3, p1

    move-object v8, p2

    invoke-static/range {v2 .. v9}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;->f(Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/model/global_config/RequestParameter;Ljava/util/Map;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$2;->val$updateConfigCallback:Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$UpdateInternalCallback;

    invoke-interface {p2, p1}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$UpdateInternalCallback;->onUpdated(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$2;->this$0:Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;->a(Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;)Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentManager;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$2;->val$iuid:Ljava/lang/String;

    invoke-virtual {p1, p3, p0}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentManager;->update(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method
