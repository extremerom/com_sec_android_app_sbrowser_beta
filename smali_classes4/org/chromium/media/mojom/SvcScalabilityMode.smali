.class public final Lorg/chromium/media/mojom/SvcScalabilityMode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/SvcScalabilityMode$EnumType;
    }
.end annotation


# static fields
.field public static final L1T1:I = 0x1

.field public static final L1T2:I = 0x2

.field public static final L1T3:I = 0x3

.field public static final L2T1:I = 0x4

.field public static final L2T1_KEY:I = 0xa

.field public static final L2T2:I = 0x5

.field public static final L2T2_KEY:I = 0xb

.field public static final L2T3:I = 0x6

.field public static final L2T3_KEY:I = 0xc

.field public static final L3T1:I = 0x7

.field public static final L3T1_KEY:I = 0xd

.field public static final L3T2:I = 0x8

.field public static final L3T2_KEY:I = 0xe

.field public static final L3T3:I = 0x9

.field public static final L3T3_KEY:I = 0xf

.field public static final MAX_VALUE:I = 0x15

.field public static final MIN_VALUE:I = 0x0

.field public static final S2T1:I = 0x10

.field public static final S2T2:I = 0x11

.field public static final S2T3:I = 0x12

.field public static final S3T1:I = 0x13

.field public static final S3T2:I = 0x14

.field public static final S3T3:I = 0x15

.field public static final UNSUPPORTED_MODE:I


# direct methods
.method public static isKnownValue(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x15

    if-gt p0, v0, :cond_0

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

    invoke-static {p0}, Lorg/chromium/media/mojom/SvcScalabilityMode;->isKnownValue(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v0, "Invalid enum value."

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
