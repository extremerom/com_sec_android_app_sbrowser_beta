.class public final Lorg/chromium/network/mojom/CspDirectiveName;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/CspDirectiveName$EnumType;
    }
.end annotation


# static fields
.field public static final BASE_URI:I = 0x1

.field public static final BLOCK_ALL_MIXED_CONTENT:I = 0x2

.field public static final CHILD_SRC:I = 0x3

.field public static final CONNECT_SRC:I = 0x4

.field public static final DEFAULT_SRC:I = 0x5

.field public static final FENCED_FRAME_SRC:I = 0x6

.field public static final FONT_SRC:I = 0x7

.field public static final FORM_ACTION:I = 0x8

.field public static final FRAME_ANCESTORS:I = 0x9

.field public static final FRAME_SRC:I = 0xa

.field public static final IMG_SRC:I = 0xb

.field public static final MANIFEST_SRC:I = 0xc

.field public static final MAX_VALUE:I = 0x1d

.field public static final MEDIA_SRC:I = 0xd

.field public static final MIN_VALUE:I = 0x0

.field public static final OBJECT_SRC:I = 0xe

.field public static final REPORT_TO:I = 0xf

.field public static final REPORT_URI:I = 0x10

.field public static final REQUIRE_SRI_FOR:I = 0x11

.field public static final REQUIRE_TRUSTED_TYPES_FOR:I = 0x12

.field public static final SANDBOX:I = 0x13

.field public static final SCRIPT_SRC:I = 0x14

.field public static final SCRIPT_SRC_ATTR:I = 0x15

.field public static final SCRIPT_SRC_ELEM:I = 0x16

.field public static final STYLE_SRC:I = 0x17

.field public static final STYLE_SRC_ATTR:I = 0x18

.field public static final STYLE_SRC_ELEM:I = 0x19

.field public static final TREAT_AS_PUBLIC_ADDRESS:I = 0x1a

.field public static final TRUSTED_TYPES:I = 0x1b

.field public static final UNKNOWN:I = 0x0

.field public static final UPGRADE_INSECURE_REQUESTS:I = 0x1c

.field public static final WORKER_SRC:I = 0x1d


# direct methods
.method public static isKnownValue(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x1d

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

    invoke-static {p0}, Lorg/chromium/network/mojom/CspDirectiveName;->isKnownValue(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v0, "Invalid enum value."

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
