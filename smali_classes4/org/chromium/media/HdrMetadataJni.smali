.class Lorg/chromium/media/HdrMetadataJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/media/HdrMetadata$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lorg/chromium/media/HdrMetadata$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/media/HdrMetadataJni;

    invoke-direct {v0}, Lorg/chromium/media/HdrMetadataJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public colorTransfer(JLorg/chromium/media/HdrMetadata;)I
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->Myx2EYmS(JLjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public maxColorVolumeLuminance(JLorg/chromium/media/HdrMetadata;)F
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MGZajSAq(JLjava/lang/Object;)F

    move-result p0

    return p0
.end method

.method public maxContentLuminance(JLorg/chromium/media/HdrMetadata;)I
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MMmvZ$nS(JLjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public maxFrameAverageLuminance(JLorg/chromium/media/HdrMetadata;)I
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MzRCryEE(JLjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public minColorVolumeLuminance(JLorg/chromium/media/HdrMetadata;)F
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MQY9Ofp7(JLjava/lang/Object;)F

    move-result p0

    return p0
.end method

.method public primaries(JLorg/chromium/media/HdrMetadata;)I
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->M6EY_9Mw(JLjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public primaryBChromaticityX(JLorg/chromium/media/HdrMetadata;)F
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->McEG$Qxu(JLjava/lang/Object;)F

    move-result p0

    return p0
.end method

.method public primaryBChromaticityY(JLorg/chromium/media/HdrMetadata;)F
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MU6WBitK(JLjava/lang/Object;)F

    move-result p0

    return p0
.end method

.method public primaryGChromaticityX(JLorg/chromium/media/HdrMetadata;)F
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MRQrYl4t(JLjava/lang/Object;)F

    move-result p0

    return p0
.end method

.method public primaryGChromaticityY(JLorg/chromium/media/HdrMetadata;)F
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MtgfnGGz(JLjava/lang/Object;)F

    move-result p0

    return p0
.end method

.method public primaryRChromaticityX(JLorg/chromium/media/HdrMetadata;)F
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->Mc0wiJ8$(JLjava/lang/Object;)F

    move-result p0

    return p0
.end method

.method public primaryRChromaticityY(JLorg/chromium/media/HdrMetadata;)F
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MYP0SLZ2(JLjava/lang/Object;)F

    move-result p0

    return p0
.end method

.method public range(JLorg/chromium/media/HdrMetadata;)I
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MGKRBsYQ(JLjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitePointChromaticityX(JLorg/chromium/media/HdrMetadata;)F
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->M8pzdQ$h(JLjava/lang/Object;)F

    move-result p0

    return p0
.end method

.method public whitePointChromaticityY(JLorg/chromium/media/HdrMetadata;)F
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MXbY07SE(JLjava/lang/Object;)F

    move-result p0

    return p0
.end method
