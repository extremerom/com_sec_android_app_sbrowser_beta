.class Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->onResetIgnoreBlockContent(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;

.field final synthetic val$tabContext:J


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$2;->this$0:Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;

    iput-wide p2, p0, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$2;->val$tabContext:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->b()Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$StatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->b()Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$StatusListener;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$2;->val$tabContext:J

    invoke-interface {v0, v1, v2}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$StatusListener;->onResetIgnoreBlockContent(J)V

    :cond_0
    return-void
.end method
