.class Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager$1$1;
.super Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallbackOnUiThread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallbackOnUiThread<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager$1;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager$1;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager$1$1;->this$1:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager$1;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallbackOnUiThread;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Integer;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager$1$1;->this$1:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager$1;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager$1;->val$context:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->updateDefaultListLastUpdatedTime(Landroid/content/Context;J)V

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockDefaultListManager;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockDefaultListManager;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager$1$1;->this$1:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager$1;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockDefaultListManager;->initialize(Landroid/content/Context;Z)Z

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceHelper;->isInitialized()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->resetDefaultContentBlocker()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager$1$1;->this$1:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager$1;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->initDefaultContentBlocker(Landroid/content/Context;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager$1$1;->onResult(Ljava/lang/Integer;)V

    return-void
.end method
