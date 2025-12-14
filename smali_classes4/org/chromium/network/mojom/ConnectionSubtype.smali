.class public final Lorg/chromium/network/mojom/ConnectionSubtype;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/ConnectionSubtype$EnumType;
    }
.end annotation


# static fields
.field public static final MAX_VALUE:I = 0x20

.field public static final MIN_VALUE:I = 0x0

.field public static final SUBTYPE_10_GIGABIT_ETHERNET:I = 0x1b

.field public static final SUBTYPE_1XRTT:I = 0x6

.field public static final SUBTYPE_BLUETOOTH_1_2:I = 0x14

.field public static final SUBTYPE_BLUETOOTH_2_1:I = 0x15

.field public static final SUBTYPE_BLUETOOTH_3_0:I = 0x16

.field public static final SUBTYPE_BLUETOOTH_4_0:I = 0x17

.field public static final SUBTYPE_CDMA:I = 0x5

.field public static final SUBTYPE_EDGE:I = 0x8

.field public static final SUBTYPE_EHRPD:I = 0x10

.field public static final SUBTYPE_ETHERNET:I = 0x18

.field public static final SUBTYPE_EVDO_REV_0:I = 0xa

.field public static final SUBTYPE_EVDO_REV_A:I = 0xb

.field public static final SUBTYPE_EVDO_REV_B:I = 0xd

.field public static final SUBTYPE_FAST_ETHERNET:I = 0x19

.field public static final SUBTYPE_GIGABIT_ETHERNET:I = 0x1a

.field public static final SUBTYPE_GPRS:I = 0x7

.field public static final SUBTYPE_GSM:I = 0x3

.field public static final SUBTYPE_HSDPA:I = 0xe

.field public static final SUBTYPE_HSPA:I = 0xc

.field public static final SUBTYPE_HSPAP:I = 0x11

.field public static final SUBTYPE_HSUPA:I = 0xf

.field public static final SUBTYPE_IDEN:I = 0x4

.field public static final SUBTYPE_LAST:I = 0x20

.field public static final SUBTYPE_LTE:I = 0x12

.field public static final SUBTYPE_LTE_ADVANCED:I = 0x13

.field public static final SUBTYPE_NONE:I = 0x1

.field public static final SUBTYPE_OTHER:I = 0x2

.field public static final SUBTYPE_UMTS:I = 0x9

.field public static final SUBTYPE_UNKNOWN:I = 0x0

.field public static final SUBTYPE_WIFI_AC:I = 0x1f

.field public static final SUBTYPE_WIFI_AD:I = 0x20

.field public static final SUBTYPE_WIFI_B:I = 0x1c

.field public static final SUBTYPE_WIFI_G:I = 0x1d

.field public static final SUBTYPE_WIFI_N:I = 0x1e


# direct methods
.method public static isKnownValue(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x20

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

    invoke-static {p0}, Lorg/chromium/network/mojom/ConnectionSubtype;->isKnownValue(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v0, "Invalid enum value."

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
