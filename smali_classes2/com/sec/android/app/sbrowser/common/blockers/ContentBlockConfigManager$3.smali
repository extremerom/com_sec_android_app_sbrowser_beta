.class Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$3;
.super Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallbackOnWorkerThread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->fetchConfig(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$UpdateCallback;Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$InitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallbackOnWorkerThread<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$initCallback:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$InitCallback;

.field final synthetic val$updateCallback:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$UpdateCallback;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$UpdateCallback;Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$InitCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$3;->this$0:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$3;->val$updateCallback:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$UpdateCallback;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$3;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$3;->val$initCallback:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$InitCallback;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallbackOnWorkerThread;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Integer;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$3;->val$updateCallback:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$UpdateCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$UpdateCallback;->onUpdateCompleted(Ljava/lang/Integer;)V

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$3;->val$context:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->updateConfigFileLastUpdatedTime(Landroid/content/Context;J)V

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "ContentBlock.ConfigManager"

    const-string p1, "There is no update filters"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$3;->this$0:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$3;->val$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$3;->val$initCallback:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$InitCallback;

    invoke-static {p1, v0, p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->e(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$InitCallback;)V

    :cond_3
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$3;->onResult(Ljava/lang/Integer;)V

    return-void
.end method
