.class public final Lorg/chromium/blink/mojom/RemoteArrayType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/RemoteArrayType$EnumType;
    }
.end annotation


# static fields
.field public static final FLOAT32_ARRAY:I = 0x7

.field public static final FLOAT64_ARRAY:I = 0x8

.field public static final INT16_ARRAY:I = 0x3

.field public static final INT32_ARRAY:I = 0x5

.field public static final INT8_ARRAY:I = 0x1

.field public static final MAX_VALUE:I = 0x8

.field public static final MIN_VALUE:I = 0x1

.field public static final UINT16_ARRAY:I = 0x4

.field public static final UINT32_ARRAY:I = 0x6

.field public static final UINT8_ARRAY:I = 0x2


# direct methods
.method public static isKnownValue(I)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v1, 0x8

    if-gt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static toKnownValue(I)I
    .locals 0

    return p0
.end method

.method public static validate(I)V
    .locals 1

    invoke-static {p0}, Lorg/chromium/blink/mojom/RemoteArrayType;->isKnownValue(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v0, "Invalid enum value."

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
