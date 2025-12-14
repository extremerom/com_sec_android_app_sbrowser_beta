.class public Lorg/chromium/components/signin/base/CoreAccountId;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mId:Lorg/chromium/components/signin/base/GaiaId;


# direct methods
.method public constructor <init>(Lorg/chromium/components/signin/base/GaiaId;)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/signin/base/CoreAccountId;->mId:Lorg/chromium/components/signin/base/GaiaId;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/chromium/components/signin/base/CoreAccountId;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lorg/chromium/components/signin/base/CoreAccountId;

    iget-object p0, p0, Lorg/chromium/components/signin/base/CoreAccountId;->mId:Lorg/chromium/components/signin/base/GaiaId;

    iget-object p1, p1, Lorg/chromium/components/signin/base/CoreAccountId;->mId:Lorg/chromium/components/signin/base/GaiaId;

    invoke-virtual {p0, p1}, Lorg/chromium/components/signin/base/GaiaId;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/signin/base/CoreAccountId;->mId:Lorg/chromium/components/signin/base/GaiaId;

    invoke-virtual {p0}, Lorg/chromium/components/signin/base/GaiaId;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/signin/base/CoreAccountId;->mId:Lorg/chromium/components/signin/base/GaiaId;

    invoke-virtual {p0}, Lorg/chromium/components/signin/base/GaiaId;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
