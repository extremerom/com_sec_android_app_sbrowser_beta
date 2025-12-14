.class Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/MediaCodecUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaCodecListHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper$CodecInfoIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Landroid/media/MediaCodecInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mCodecList:[Landroid/media/MediaCodecInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v0, Landroid/media/MediaCodecList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;->mCodecList:[Landroid/media/MediaCodecInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static bridge synthetic g(Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;)[Landroid/media/MediaCodecInfo;
    .locals 0

    iget-object p0, p0, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;->mCodecList:[Landroid/media/MediaCodecInfo;

    return-object p0
.end method

.method private getCodecCount()I
    .locals 0

    iget-object p0, p0, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;->mCodecList:[Landroid/media/MediaCodecInfo;

    if-eqz p0, :cond_0

    array-length p0, p0

    return p0

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private getCodecInfoAt(I)Landroid/media/MediaCodecInfo;
    .locals 0

    iget-object p0, p0, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;->mCodecList:[Landroid/media/MediaCodecInfo;

    if-eqz p0, :cond_0

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    invoke-static {p1}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic i(Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;)I
    .locals 0

    invoke-direct {p0}, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;->getCodecCount()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic l(Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;I)Landroid/media/MediaCodecInfo;
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/media/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper$CodecInfoIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper$CodecInfoIterator;-><init>(Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;I)V

    return-object v0
.end method
