.class public Lorg/chromium/media/PhotoCapabilities$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/PhotoCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public mBoolCapability:[Z

.field public mDoubleCapability:[D

.field public mFillLightModeArray:[I

.field public mIntCapability:[I

.field public mMeteringMode:[I

.field public mMeteringModeArray:[[I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [Z

    iput-object v1, p0, Lorg/chromium/media/PhotoCapabilities$Builder;->mBoolCapability:[Z

    const/16 v1, 0x10

    new-array v2, v1, [D

    iput-object v2, p0, Lorg/chromium/media/PhotoCapabilities$Builder;->mDoubleCapability:[D

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/chromium/media/PhotoCapabilities$Builder;->mIntCapability:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/chromium/media/PhotoCapabilities$Builder;->mMeteringMode:[I

    new-array v0, v0, [[I

    iput-object v0, p0, Lorg/chromium/media/PhotoCapabilities$Builder;->mMeteringModeArray:[[I

    return-void
.end method


# virtual methods
.method public build()Lorg/chromium/media/PhotoCapabilities;
    .locals 8

    new-instance v7, Lorg/chromium/media/PhotoCapabilities;

    iget-object v1, p0, Lorg/chromium/media/PhotoCapabilities$Builder;->mBoolCapability:[Z

    iget-object v2, p0, Lorg/chromium/media/PhotoCapabilities$Builder;->mDoubleCapability:[D

    iget-object v3, p0, Lorg/chromium/media/PhotoCapabilities$Builder;->mIntCapability:[I

    iget-object v4, p0, Lorg/chromium/media/PhotoCapabilities$Builder;->mFillLightModeArray:[I

    iget-object v5, p0, Lorg/chromium/media/PhotoCapabilities$Builder;->mMeteringMode:[I

    iget-object v6, p0, Lorg/chromium/media/PhotoCapabilities$Builder;->mMeteringModeArray:[[I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/chromium/media/PhotoCapabilities;-><init>([Z[D[I[I[I[[I)V

    return-object v7
.end method

.method public setBool(IZ)Lorg/chromium/media/PhotoCapabilities$Builder;
    .locals 1

    iget-object v0, p0, Lorg/chromium/media/PhotoCapabilities$Builder;->mBoolCapability:[Z

    aput-boolean p2, v0, p1

    return-object p0
.end method

.method public setDouble(ID)Lorg/chromium/media/PhotoCapabilities$Builder;
    .locals 1

    iget-object v0, p0, Lorg/chromium/media/PhotoCapabilities$Builder;->mDoubleCapability:[D

    aput-wide p2, v0, p1

    return-object p0
.end method

.method public setFillLightModeArray([I)Lorg/chromium/media/PhotoCapabilities$Builder;
    .locals 0

    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lorg/chromium/media/PhotoCapabilities$Builder;->mFillLightModeArray:[I

    return-object p0
.end method

.method public setInt(II)Lorg/chromium/media/PhotoCapabilities$Builder;
    .locals 1

    iget-object v0, p0, Lorg/chromium/media/PhotoCapabilities$Builder;->mIntCapability:[I

    aput p2, v0, p1

    return-object p0
.end method

.method public setMeteringMode(II)Lorg/chromium/media/PhotoCapabilities$Builder;
    .locals 1

    iget-object v0, p0, Lorg/chromium/media/PhotoCapabilities$Builder;->mMeteringMode:[I

    aput p2, v0, p1

    return-object p0
.end method

.method public setMeteringModeArray(I[I)Lorg/chromium/media/PhotoCapabilities$Builder;
    .locals 1

    iget-object v0, p0, Lorg/chromium/media/PhotoCapabilities$Builder;->mMeteringModeArray:[[I

    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    aput-object p2, v0, p1

    return-object p0
.end method
