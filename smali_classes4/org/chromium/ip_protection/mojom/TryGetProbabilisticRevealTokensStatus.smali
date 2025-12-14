.class public final Lorg/chromium/ip_protection/mojom/TryGetProbabilisticRevealTokensStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ip_protection/mojom/TryGetProbabilisticRevealTokensStatus$EnumType;
    }
.end annotation


# static fields
.field public static final EXPIRATION_TOO_LATE:I = 0xa

.field public static final EXPIRATION_TOO_SOON:I = 0x9

.field public static final INVALID_EPOCH_ID_SIZE:I = 0xf

.field public static final INVALID_NUM_TOKENS_WITH_SIGNAL:I = 0xc

.field public static final INVALID_PUBLIC_KEY:I = 0xb

.field public static final INVALID_TOKEN_SIZE:I = 0x6

.field public static final INVALID_TOKEN_VERSION:I = 0x5

.field public static final MAX_VALUE:I = 0xf

.field public static final MIN_VALUE:I = 0x0

.field public static final NET_NOT_OK:I = 0x1

.field public static final NET_OK_NULL_RESPONSE:I = 0x2

.field public static final NO_GOOGLE_CHROME_BRANDING:I = 0xe

.field public static final NULL_RESPONSE:I = 0x3

.field public static final REQUEST_BACKED_OFF:I = 0xd

.field public static final RESPONSE_PARSING_FAILED:I = 0x4

.field public static final SUCCESS:I = 0x0

.field public static final TOO_FEW_TOKENS:I = 0x7

.field public static final TOO_MANY_TOKENS:I = 0x8


# direct methods
.method public static isKnownValue(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0xf

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

    invoke-static {p0}, Lorg/chromium/ip_protection/mojom/TryGetProbabilisticRevealTokensStatus;->isKnownValue(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v0, "Invalid enum value."

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
