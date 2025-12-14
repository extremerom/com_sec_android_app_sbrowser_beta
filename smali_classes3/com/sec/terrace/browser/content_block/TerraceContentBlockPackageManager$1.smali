.class Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->onNumberOfBlockedRequests(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;

.field final synthetic val$count:I

.field final synthetic val$tabContext:J


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;JI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$1;->this$0:Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;

    iput-wide p2, p0, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$1;->val$tabContext:J

    iput p4, p0, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$1;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->isContentBlockerStatisticsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->a()Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$StatisticsListener;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->a()Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$StatisticsListener;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$1;->val$tabContext:J

    iget p0, p0, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$1;->val$count:I

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$StatisticsListener;->onNumberOfBlockedRequests(JI)V

    :cond_1
    return-void
.end method
