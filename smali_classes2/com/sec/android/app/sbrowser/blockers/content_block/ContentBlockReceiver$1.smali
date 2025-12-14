.class Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockReceiver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockReceiver;->handleAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$selectedPackageList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockReceiver;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockReceiver$1;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockReceiver;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockReceiver$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockReceiver$1;->val$selectedPackageList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "ContentBlock.Receiver"

    const-string v1, "handleAction run handleAppUpdate"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockReceiver$1;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockReceiver;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockReceiver$1;->val$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockReceiver$1;->val$selectedPackageList:Ljava/util/ArrayList;

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockReceiver;->a(Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockReceiver;Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method
