.class public final Lorg/chromium/mojo_base/mojom/FileError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojo_base/mojom/FileError$EnumType;
    }
.end annotation


# static fields
.field public static final ABORT:I = -0xc

.field public static final ACCESS_DENIED:I = -0x5

.field public static final EXISTS:I = -0x3

.field public static final FAILED:I = -0x1

.field public static final INVALID_OPERATION:I = -0xa

.field public static final INVALID_URL:I = -0xf

.field public static final IN_USE:I = -0x2

.field public static final IO:I = -0x10

.field public static final MAX_VALUE:I = 0x0

.field public static final MIN_VALUE:I = -0x10

.field public static final NOT_A_DIRECTORY:I = -0x9

.field public static final NOT_A_FILE:I = -0xd

.field public static final NOT_EMPTY:I = -0xe

.field public static final NOT_FOUND:I = -0x4

.field public static final NO_MEMORY:I = -0x7

.field public static final NO_SPACE:I = -0x8

.field public static final OK:I = 0x0

.field public static final SECURITY:I = -0xb

.field public static final TOO_MANY_OPENED:I = -0x6


# direct methods
.method public static isKnownValue(I)Z
    .locals 1

    const/16 v0, -0x10

    if-lt p0, v0, :cond_0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static toKnownValue(I)I
    .locals 0

    return p0
.end method

.method public static validate(I)V
    .locals 1

    invoke-static {p0}, Lorg/chromium/mojo_base/mojom/FileError;->isKnownValue(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v0, "Invalid enum value."

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
