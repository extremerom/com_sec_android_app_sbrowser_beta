.class public final Lorg/chromium/ui/mojom/TextInputType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/mojom/TextInputType$EnumType;
    }
.end annotation


# static fields
.field public static final CONTENT_EDITABLE:I = 0xf

.field public static final DATE:I = 0x8

.field public static final DATE_TIME:I = 0x9

.field public static final DATE_TIME_FIELD:I = 0x10

.field public static final DATE_TIME_LOCAL:I = 0xa

.field public static final EMAIL:I = 0x4

.field public static final MAX:I = 0x11

.field public static final MAX_VALUE:I = 0x11

.field public static final MIN_VALUE:I = 0x0

.field public static final MONTH:I = 0xb

.field public static final NONE:I = 0x0

.field public static final NUMBER:I = 0x5

.field public static final PASSWORD:I = 0x2

.field public static final SEARCH:I = 0x3

.field public static final TELEPHONE:I = 0x6

.field public static final TEXT:I = 0x1

.field public static final TEXT_AREA:I = 0xe

.field public static final TIME:I = 0xc

.field public static final TYPE_NULL:I = 0x11

.field public static final URL:I = 0x7

.field public static final WEEK:I = 0xd


# direct methods
.method public static isKnownValue(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x11

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

    invoke-static {p0}, Lorg/chromium/ui/mojom/TextInputType;->isKnownValue(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v0, "Invalid enum value."

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
