.class public Lcom/sec/terrace/TerraceState$WebContentsStateNative;
.super Lcom/sec/terrace/TerraceState$WebContentsState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/TerraceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebContentsStateNative"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/terrace/TerraceState$WebContentsState;-><init>(Ljava/nio/ByteBuffer;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/TerraceState$WebContentsStateNative;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/TerraceState$WebContentsStateNative;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/terrace/TerraceState$WebContentsStateNative$1;

    invoke-direct {v1, p0}, Lcom/sec/terrace/TerraceState$WebContentsStateNative$1;-><init>(Lcom/sec/terrace/TerraceState$WebContentsStateNative;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
