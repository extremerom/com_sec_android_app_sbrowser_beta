.class public final Lorg/chromium/blink/mojom/RequestContextType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/RequestContextType$EnumType;
    }
.end annotation


# static fields
.field public static final ATTRIBUTION_SRC:I = 0x1

.field public static final AUDIO:I = 0x2

.field public static final BEACON:I = 0x3

.field public static final CSP_REPORT:I = 0x4

.field public static final DOWNLOAD:I = 0x5

.field public static final EMBED:I = 0x6

.field public static final EVENT_SOURCE:I = 0x7

.field public static final FAVICON:I = 0x8

.field public static final FETCH:I = 0x9

.field public static final FONT:I = 0xa

.field public static final FORM:I = 0xb

.field public static final FRAME:I = 0xc

.field public static final HYPERLINK:I = 0xd

.field public static final IFRAME:I = 0xe

.field public static final IMAGE:I = 0xf

.field public static final IMAGE_SET:I = 0x10

.field public static final INTERNAL:I = 0x11

.field public static final JSON:I = 0x12

.field public static final LOCATION:I = 0x13

.field public static final MANIFEST:I = 0x14

.field public static final MAX_VALUE:I = 0x24

.field public static final MIN_VALUE:I = 0x0

.field public static final OBJECT:I = 0x15

.field public static final PING:I = 0x16

.field public static final PLUGIN:I = 0x17

.field public static final PREFETCH:I = 0x18

.field public static final SCRIPT:I = 0x19

.field public static final SERVICE_WORKER:I = 0x1a

.field public static final SHARED_WORKER:I = 0x1b

.field public static final SPECULATION_RULES:I = 0x1c

.field public static final STYLE:I = 0x1f

.field public static final SUBRESOURCE:I = 0x1d

.field public static final SUBRESOURCE_WEBBUNDLE:I = 0x1e

.field public static final TRACK:I = 0x20

.field public static final UNSPECIFIED:I = 0x0

.field public static final VIDEO:I = 0x21

.field public static final WORKER:I = 0x22

.field public static final XML_HTTP_REQUEST:I = 0x23

.field public static final XSLT:I = 0x24


# direct methods
.method public static isKnownValue(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x24

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

    invoke-static {p0}, Lorg/chromium/blink/mojom/RequestContextType;->isKnownValue(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v0, "Invalid enum value."

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
