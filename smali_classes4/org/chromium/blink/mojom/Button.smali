.class public final Lorg/chromium/blink/mojom/Button;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/Button$EnumType;
    }
.end annotation


# static fields
.field public static final BACK:I = 0x3

.field public static final BARREL:I = 0x2

.field public static final ERASER:I = 0x5

.field public static final FORWARD:I = 0x4

.field public static final LEFT:I = 0x0

.field public static final MAX_VALUE:I = 0x5

.field public static final MIDDLE:I = 0x1

.field public static final MIN_VALUE:I = -0x1

.field public static final NO_BUTTON:I = -0x1

.field public static final RIGHT:I = 0x2


# direct methods
.method public static isKnownValue(I)Z
    .locals 1

    const/4 v0, -0x1

    if-lt p0, v0, :cond_0

    const/4 v0, 0x5

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

    invoke-static {p0}, Lorg/chromium/blink/mojom/Button;->isKnownValue(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v0, "Invalid enum value."

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
