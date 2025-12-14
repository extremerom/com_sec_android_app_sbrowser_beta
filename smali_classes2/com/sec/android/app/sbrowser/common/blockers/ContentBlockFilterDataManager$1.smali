.class Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager$1;
.super Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallbackOnUiThread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;->initContentBlocker(Landroid/content/Context;Ljava/util/ArrayList;Ljava/nio/ByteBuffer;Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$OnContentBlockInitCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallbackOnUiThread<",
        "Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager$ContentBlockInitData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;

.field final synthetic val$callback:Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$OnContentBlockInitCallback;

.field final synthetic val$errorNotifyType:I

.field final synthetic val$packageList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;Ljava/util/ArrayList;ILcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$OnContentBlockInitCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager$1;->this$0:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager$1;->val$packageList:Ljava/util/ArrayList;

    iput p3, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager$1;->val$errorNotifyType:I

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager$1;->val$callback:Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$OnContentBlockInitCallback;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallbackOnUiThread;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager$ContentBlockInitData;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager$1;->val$packageList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": result type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager$ContentBlockInitData;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", err apps size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager$ContentBlockInitData;->getErrApps()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContentBlock.FilterDataManager"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager$ContentBlockInitData;->getErrApps()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "init contentblocker failed for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager$ContentBlockInitData;->getErrApps()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager$ContentBlockInitData;->getErrApps()Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager$1;->val$errorNotifyType:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager;->updateErrorPackagesStatus(Ljava/util/ArrayList;I)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager$ContentBlockInitData;->getType()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager$1;->val$callback:Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$OnContentBlockInitCallback;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$OnContentBlockInitCallback;->onCompleted(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager$1;->this$0:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;->a(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager$1;->this$0:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager$ContentBlockInitData;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;->a(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;I)V

    invoke-static {}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->getInstance()Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager$ContentBlockInitData;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager$1;->val$callback:Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$OnContentBlockInitCallback;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager$ContentBlockInitData;->getAppSize()I

    move-result p1

    invoke-virtual {v0, v1, p0, p1}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->initContentBlocker(Ljava/nio/ByteBuffer;Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$OnContentBlockInitCallback;I)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager$ContentBlockInitData;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager$1;->onResult(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager$ContentBlockInitData;)V

    return-void
.end method
