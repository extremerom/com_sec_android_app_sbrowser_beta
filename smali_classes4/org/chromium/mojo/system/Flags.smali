.class public abstract Lorg/chromium/mojo/system/Flags;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Lorg/chromium/mojo/system/Flags<",
        "TF;>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mFlags:I

.field private mImmutable:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/mojo/system/Flags;->mImmutable:Z

    iput p1, p0, Lorg/chromium/mojo/system/Flags;->mFlags:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lorg/chromium/mojo/system/Flags;

    iget p0, p0, Lorg/chromium/mojo/system/Flags;->mFlags:I

    iget p1, p1, Lorg/chromium/mojo/system/Flags;->mFlags:I

    if-eq p0, p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public getFlags()I
    .locals 0

    iget p0, p0, Lorg/chromium/mojo/system/Flags;->mFlags:I

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Lorg/chromium/mojo/system/Flags;->mFlags:I

    return p0
.end method

.method public immutable()Lorg/chromium/mojo/system/Flags;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/mojo/system/Flags;->mImmutable:Z

    return-object p0
.end method

.method public setFlag(IZ)Lorg/chromium/mojo/system/Flags;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)TF;"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/chromium/mojo/system/Flags;->mImmutable:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    iget p2, p0, Lorg/chromium/mojo/system/Flags;->mFlags:I

    or-int/2addr p1, p2

    iput p1, p0, Lorg/chromium/mojo/system/Flags;->mFlags:I

    goto :goto_0

    :cond_0
    iget p2, p0, Lorg/chromium/mojo/system/Flags;->mFlags:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lorg/chromium/mojo/system/Flags;->mFlags:I

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Flags is immutable."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
