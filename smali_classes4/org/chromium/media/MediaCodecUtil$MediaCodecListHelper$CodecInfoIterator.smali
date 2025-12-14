.class Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper$CodecInfoIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CodecInfoIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroid/media/MediaCodecInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mPosition:I

.field final synthetic this$0:Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;


# direct methods
.method private constructor <init>(Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper$CodecInfoIterator;->this$0:Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper$CodecInfoIterator;-><init>(Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget v0, p0, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper$CodecInfoIterator;->mPosition:I

    iget-object p0, p0, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper$CodecInfoIterator;->this$0:Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;

    invoke-static {p0}, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;->i(Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;)I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()Landroid/media/MediaCodecInfo;
    .locals 3

    iget v0, p0, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper$CodecInfoIterator;->mPosition:I

    iget-object v1, p0, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper$CodecInfoIterator;->this$0:Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;

    invoke-static {v1}, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;->i(Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper$CodecInfoIterator;->this$0:Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;

    iget v1, p0, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper$CodecInfoIterator;->mPosition:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper$CodecInfoIterator;->mPosition:I

    invoke-static {v0, v1}, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;->l(Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;I)Landroid/media/MediaCodecInfo;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper$CodecInfoIterator;->next()Landroid/media/MediaCodecInfo;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
