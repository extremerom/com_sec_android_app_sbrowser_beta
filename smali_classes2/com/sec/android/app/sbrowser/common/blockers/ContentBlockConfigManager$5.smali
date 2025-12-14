.class Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->installConfig(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$InitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;

.field final synthetic val$callback:Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallbackOnWorkerThread;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallbackOnWorkerThread;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$5;->this$0:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$5;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$5;->val$callback:Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallbackOnWorkerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$5;->this$0:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$5;->val$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$5;->val$callback:Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallbackOnWorkerThread;

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->f(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallbackOnWorkerThread;)V

    return-void
.end method
