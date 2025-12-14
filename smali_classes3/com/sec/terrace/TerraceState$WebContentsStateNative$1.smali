.class Lcom/sec/terrace/TerraceState$WebContentsStateNative$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/TerraceState$WebContentsStateNative;->finalize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/TerraceState$WebContentsStateNative;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/TerraceState$WebContentsStateNative;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/TerraceState$WebContentsStateNative$1;->this$0:Lcom/sec/terrace/TerraceState$WebContentsStateNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/TerraceStateJni;->get()Lcom/sec/terrace/TerraceState$Natives;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/terrace/TerraceState$WebContentsStateNative$1;->this$0:Lcom/sec/terrace/TerraceState$WebContentsStateNative;

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceState$WebContentsState;->buffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/sec/terrace/TerraceState$Natives;->freeWebContentsStateBuffer(Ljava/nio/ByteBuffer;)V

    return-void
.end method
