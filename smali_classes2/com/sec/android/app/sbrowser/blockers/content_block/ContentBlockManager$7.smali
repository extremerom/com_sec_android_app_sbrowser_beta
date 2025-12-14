.class Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$additionalFilterBuffer:Ljava/nio/ByteBuffer;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$errorNotifyType:I

.field final synthetic val$initCallback:Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$OnContentBlockInitCallback;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;Landroid/content/Context;Ljava/nio/ByteBuffer;Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$OnContentBlockInitCallback;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$7;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$7;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$7;->val$additionalFilterBuffer:Ljava/nio/ByteBuffer;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$7;->val$initCallback:Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$OnContentBlockInitCallback;

    iput p5, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$7;->val$errorNotifyType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$7;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getSelectedPackageNameList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$7;->val$additionalFilterBuffer:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$7;->val$initCallback:Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$OnContentBlockInitCallback;

    iget v5, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$7;->val$errorNotifyType:I

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;->initContentBlocker(Landroid/content/Context;Ljava/util/ArrayList;Ljava/nio/ByteBuffer;Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$OnContentBlockInitCallback;I)V

    return-void
.end method
