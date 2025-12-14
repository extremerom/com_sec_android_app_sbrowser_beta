.class public final Lorg/chromium/blink/mojom/LinkGenerationError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/LinkGenerationError$EnumType;
    }
.end annotation


# static fields
.field public static final BLOCK_LIST:I = 0xc

.field public static final CONTEXT_EXHAUSTED:I = 0x3

.field public static final CONTEXT_LIMIT_REACHED:I = 0x4

.field public static final EMPTY_SELECTION:I = 0x5

.field public static final INCORRECT_SELECTOR:I = 0x0

.field public static final I_FRAME:I = 0xa

.field public static final MAX_VALUE:I = 0xe

.field public static final MIN_VALUE:I = -0x1

.field public static final NONE:I = -0x1

.field public static final NOT_GENERATED:I = 0xe

.field public static final NO_CONTEXT:I = 0x2

.field public static final NO_RANGE:I = 0x1

.field public static final NO_REMOTE_CONNECTION:I = 0xd

.field public static final OMNIBOX_NAVIGATION:I = 0x7

.field public static final TAB_CRASH:I = 0x8

.field public static final TAB_HIDDEN:I = 0x6

.field public static final TIMEOUT:I = 0xb

.field public static final UNKNOWN:I = 0x9


# direct methods
.method public static isKnownValue(I)Z
    .locals 1

    const/4 v0, -0x1

    if-lt p0, v0, :cond_0

    const/16 v0, 0xe

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

    invoke-static {p0}, Lorg/chromium/blink/mojom/LinkGenerationError;->isKnownValue(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v0, "Invalid enum value."

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
