.class public final Lorg/chromium/viz/mojom/TimingStepPosition;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/viz/mojom/TimingStepPosition$EnumType;
    }
.end annotation


# static fields
.field public static final END:I = 0x1

.field public static final JUMP_BOTH:I = 0x2

.field public static final JUMP_END:I = 0x3

.field public static final JUMP_NONE:I = 0x4

.field public static final JUMP_START:I = 0x5

.field public static final MAX_VALUE:I = 0x5

.field public static final MIN_VALUE:I

.field public static final START:I


# direct methods
.method public static isKnownValue(I)Z
    .locals 1

    if-ltz p0, :cond_0

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

    invoke-static {p0}, Lorg/chromium/viz/mojom/TimingStepPosition;->isKnownValue(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v0, "Invalid enum value."

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
