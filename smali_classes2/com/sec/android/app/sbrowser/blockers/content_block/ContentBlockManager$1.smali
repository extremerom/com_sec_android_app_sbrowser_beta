.class Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$OnContentBlockInitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->initialize(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$1;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Z)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "initContentBlockerFromCache = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContentBlock.Manager"

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
