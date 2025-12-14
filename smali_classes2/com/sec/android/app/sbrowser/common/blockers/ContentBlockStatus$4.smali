.class Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->initDefaultContentBlocker(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;

.field final synthetic val$callback:Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$OnContentBlockInitCallback;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;Landroid/content/Context;Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$OnContentBlockInitCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus$4;->this$0:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus$4;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus$4;->val$callback:Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$OnContentBlockInitCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus$4;->val$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus$4;->val$callback:Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$OnContentBlockInitCallback;

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;->initDefaultContentBlocker(Landroid/content/Context;Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$OnContentBlockInitCallback;)V

    return-void
.end method
