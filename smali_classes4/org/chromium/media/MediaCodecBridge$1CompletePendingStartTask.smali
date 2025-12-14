.class Lorg/chromium/media/MediaCodecBridge$1CompletePendingStartTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/media/MediaCodecBridge;->start()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CompletePendingStartTask"
.end annotation


# instance fields
.field private mThisSequence:I

.field final synthetic this$0:Lorg/chromium/media/MediaCodecBridge;


# direct methods
.method public constructor <init>(Lorg/chromium/media/MediaCodecBridge;I)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/media/MediaCodecBridge$1CompletePendingStartTask;->this$0:Lorg/chromium/media/MediaCodecBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/chromium/media/MediaCodecBridge$1CompletePendingStartTask;->mThisSequence:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge$1CompletePendingStartTask;->this$0:Lorg/chromium/media/MediaCodecBridge;

    iget p0, p0, Lorg/chromium/media/MediaCodecBridge$1CompletePendingStartTask;->mThisSequence:I

    invoke-virtual {v0, p0}, Lorg/chromium/media/MediaCodecBridge;->onPendingStartComplete(I)V

    return-void
.end method
