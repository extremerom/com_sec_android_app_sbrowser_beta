.class Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->initializeInternal(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$delegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$2;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$2;->val$delegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$2;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$2;->val$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$2;->val$delegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->h(Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V

    return-void
.end method
