.class Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->getPickedList(Landroid/content/Context;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listForIcons:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager$2;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager$2;->val$listForIcons:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager$2;->val$listForIcons:Ljava/util/ArrayList;

    new-instance v3, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager$2$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager$2$1;-><init>(Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager$2;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;->downloadIcons(Landroid/content/Context;Ljava/util/ArrayList;Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallback;)V

    return-void
.end method
