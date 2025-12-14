.class Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager;->updateAppIcon(Landroid/content/Context;Ljava/util/List;Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallbackOnWorkerThread;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager;

.field final synthetic val$callback:Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallbackOnWorkerThread;

.field final synthetic val$contentBlockHttpURLConnection:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockHttpURLConnection;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$packages:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager;Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockHttpURLConnection;Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallbackOnWorkerThread;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager$3;->this$0:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager$3;->val$contentBlockHttpURLConnection:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockHttpURLConnection;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager$3;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager$3;->val$callback:Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallbackOnWorkerThread;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager$3;->val$packages:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager$3;->val$contentBlockHttpURLConnection:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockHttpURLConnection;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager$3$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager$3$1;-><init>(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager$3;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager$3;->val$packages:Ljava/util/List;

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockHttpURLConnection;->requestDataForIcons(Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallback;Ljava/util/List;)V

    return-void
.end method
