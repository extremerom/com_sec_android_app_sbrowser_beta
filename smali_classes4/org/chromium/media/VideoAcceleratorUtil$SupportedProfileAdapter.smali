.class Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/VideoAcceleratorUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SupportedProfileAdapter"
.end annotation


# instance fields
.field public isSoftwareCodec:Z

.field public level:I

.field public maxFramerateDenominator:I

.field public maxFramerateNumerator:I

.field public maxHeight:I

.field public maxNumberOfTemporalLayers:I

.field public maxWidth:I

.field public minHeight:I

.field public minWidth:I

.field public name:Ljava/lang/String;

.field public profile:I

.field public requiresSecurePlayback:Z

.field public supportsCbr:Z

.field public supportsSecurePlayback:Z

.field public supportsVbr:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getLevel()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget p0, p0, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->level:I

    return p0
.end method

.method public getMaxFramerateDenominator()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget p0, p0, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->maxFramerateDenominator:I

    return p0
.end method

.method public getMaxFramerateNumerator()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget p0, p0, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->maxFramerateNumerator:I

    return p0
.end method

.method public getMaxHeight()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget p0, p0, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->maxHeight:I

    return p0
.end method

.method public getMaxNumberOfTemporalLayers()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget p0, p0, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->maxNumberOfTemporalLayers:I

    return p0
.end method

.method public getMaxWidth()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget p0, p0, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->maxWidth:I

    return p0
.end method

.method public getMinHeight()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget p0, p0, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->minHeight:I

    return p0
.end method

.method public getMinWidth()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget p0, p0, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->minWidth:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getProfile()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget p0, p0, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->profile:I

    return p0
.end method

.method public isSoftwareCodec()Z
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-boolean p0, p0, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->isSoftwareCodec:Z

    return p0
.end method

.method public requiresSecurePlayback()Z
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-boolean p0, p0, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->requiresSecurePlayback:Z

    return p0
.end method

.method public supportsCbr()Z
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-boolean p0, p0, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->supportsCbr:Z

    return p0
.end method

.method public supportsSecurePlayback()Z
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-boolean p0, p0, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->supportsSecurePlayback:Z

    return p0
.end method

.method public supportsVbr()Z
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-boolean p0, p0, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->supportsVbr:Z

    return p0
.end method
