.class Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$OnContentBlockInitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->initContentBlocker(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$6;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$6;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Z)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$6$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$6$1;-><init>(Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$6;Z)V

    invoke-static {v0}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
