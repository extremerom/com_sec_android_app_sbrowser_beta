.class Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager;->updateDefaultList(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager;

.field final synthetic val$contentBlockHttpURLConnection:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockHttpURLConnection;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager;Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockHttpURLConnection;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager$1;->this$0:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager$1;->val$contentBlockHttpURLConnection:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockHttpURLConnection;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager$1;->val$contentBlockHttpURLConnection:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockHttpURLConnection;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager$1$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager$1$1;-><init>(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager$1;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager$1;->this$0:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager;->b(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager;)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager$1;->val$context:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFileUtils;->getDefaultFilter(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockHttpURLConnection;->requestData(Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallback;Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method
