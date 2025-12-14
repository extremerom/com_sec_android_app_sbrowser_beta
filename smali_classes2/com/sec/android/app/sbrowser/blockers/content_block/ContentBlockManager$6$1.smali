.class Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$6;->onCompleted(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$6;

.field final synthetic val$isSuccess:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$6;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$6$1;->this$1:Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$6;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$6$1;->val$isSuccess:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initContentBlocker onCompleted isSuccess : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$6$1;->val$isSuccess:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ContentBlock.Manager"

    invoke-static {v2, v0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$6$1;->this$1:Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$6;

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$6;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$6;->val$context:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->sendSILog(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$6$1;->this$1:Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$6;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$6;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->isContentBlockerEnabled(Landroid/content/Context;)Z

    move-result v0

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$6$1;->val$isSuccess:Z

    if-eqz v3, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$6$1;->this$1:Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$6;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$6;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->e(Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$6$1;->val$isSuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$6$1;->this$1:Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$6;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$6;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$6;->val$context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->updateContentBlockerRuntimeSettings(Landroid/content/Context;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$6$1;->this$1:Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$6;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$6;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;

    invoke-static {v0, v4}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->e(Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$6$1;->this$1:Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$6;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$6;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->g(Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->resetContentBlocker()V

    :goto_1
    return-void
.end method
