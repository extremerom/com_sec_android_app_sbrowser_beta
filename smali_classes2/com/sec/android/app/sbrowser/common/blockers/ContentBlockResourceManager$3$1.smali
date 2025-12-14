.class Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager$3$1;
.super Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallbackOnUiThread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager$3;->run()V
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
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager$3;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager$3;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager$3$1;->this$1:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager$3;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallbackOnUiThread;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Integer;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager$3$1;->this$1:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager$3;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager$3;->val$context:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->updateIconLastUpdatedTime(Landroid/content/Context;J)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager$3$1;->this$1:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager$3;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager$3;->val$callback:Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallbackOnWorkerThread;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallbackOnWorkerThread;->invokeOnResult(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager$3$1;->onResult(Ljava/lang/Integer;)V

    return-void
.end method
