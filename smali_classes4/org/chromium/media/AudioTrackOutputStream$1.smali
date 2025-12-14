.class Lorg/chromium/media/AudioTrackOutputStream$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/media/AudioTrackOutputStream$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/media/AudioTrackOutputStream;-><init>(Lorg/chromium/media/AudioTrackOutputStream$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/media/AudioTrackOutputStream;


# direct methods
.method public constructor <init>(Lorg/chromium/media/AudioTrackOutputStream;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/media/AudioTrackOutputStream$1;->this$0:Lorg/chromium/media/AudioTrackOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAudioTrack(IIIIII)Landroid/media/AudioTrack;
    .locals 7

    new-instance p0, Landroid/media/AudioTrack;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    return-object p0
.end method

.method public getAddress(Ljava/nio/ByteBuffer;)J
    .locals 3

    invoke-static {}, Lorg/chromium/media/AudioTrackOutputStreamJni;->get()Lorg/chromium/media/AudioTrackOutputStream$Natives;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/media/AudioTrackOutputStream$1;->this$0:Lorg/chromium/media/AudioTrackOutputStream;

    invoke-static {v1}, Lorg/chromium/media/AudioTrackOutputStream;->a(Lorg/chromium/media/AudioTrackOutputStream;)J

    move-result-wide v1

    iget-object p0, p0, Lorg/chromium/media/AudioTrackOutputStream$1;->this$0:Lorg/chromium/media/AudioTrackOutputStream;

    invoke-interface {v0, v1, v2, p0, p1}, Lorg/chromium/media/AudioTrackOutputStream$Natives;->getAddress(JLorg/chromium/media/AudioTrackOutputStream;Ljava/nio/ByteBuffer;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getMinBufferSize(III)I
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result p0

    return p0
.end method

.method public onError()V
    .locals 3

    invoke-static {}, Lorg/chromium/media/AudioTrackOutputStreamJni;->get()Lorg/chromium/media/AudioTrackOutputStream$Natives;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/media/AudioTrackOutputStream$1;->this$0:Lorg/chromium/media/AudioTrackOutputStream;

    invoke-static {v1}, Lorg/chromium/media/AudioTrackOutputStream;->a(Lorg/chromium/media/AudioTrackOutputStream;)J

    move-result-wide v1

    iget-object p0, p0, Lorg/chromium/media/AudioTrackOutputStream$1;->this$0:Lorg/chromium/media/AudioTrackOutputStream;

    invoke-interface {v0, v1, v2, p0}, Lorg/chromium/media/AudioTrackOutputStream$Natives;->onError(JLorg/chromium/media/AudioTrackOutputStream;)V

    return-void
.end method

.method public onMoreData(Ljava/nio/ByteBuffer;J)Lorg/chromium/media/AudioTrackOutputStream$AudioBufferInfo;
    .locals 7

    invoke-static {}, Lorg/chromium/media/AudioTrackOutputStreamJni;->get()Lorg/chromium/media/AudioTrackOutputStream$Natives;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/media/AudioTrackOutputStream$1;->this$0:Lorg/chromium/media/AudioTrackOutputStream;

    invoke-static {v1}, Lorg/chromium/media/AudioTrackOutputStream;->a(Lorg/chromium/media/AudioTrackOutputStream;)J

    move-result-wide v1

    iget-object v3, p0, Lorg/chromium/media/AudioTrackOutputStream$1;->this$0:Lorg/chromium/media/AudioTrackOutputStream;

    move-object v4, p1

    move-wide v5, p2

    invoke-interface/range {v0 .. v6}, Lorg/chromium/media/AudioTrackOutputStream$Natives;->onMoreData(JLorg/chromium/media/AudioTrackOutputStream;Ljava/nio/ByteBuffer;J)Lorg/chromium/media/AudioTrackOutputStream$AudioBufferInfo;

    move-result-object p0

    return-object p0
.end method
