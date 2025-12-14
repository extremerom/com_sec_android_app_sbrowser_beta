.class public final Lorg/chromium/network/mojom/HttpCacheBackendOpenFileFlags;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/HttpCacheBackendOpenFileFlags$EnumType;
    }
.end annotation


# static fields
.field public static final CREATE_ALWAYS_WRITE_WIN_SHARE_DELETE:I = 0x8048

.field public static final CREATE_AND_WRITE:I = 0x42

.field public static final CREATE_READ_WRITE_WIN_SHARE_DELETE:I = 0x8062

.field public static final MAX_VALUE:I = 0x88021

.field public static final MIN_VALUE:I = 0x21

.field public static final OPEN_AND_READ:I = 0x21

.field public static final OPEN_READ_WIN_SHARE_DELETE_WIN_SEQUENTIAL_SCAN:I = 0x88021

.field public static final OPEN_READ_WRITE_WIN_SHARE_DELETE:I = 0x8061


# direct methods
.method public static isKnownValue(I)Z
    .locals 0

    sparse-switch p0, :sswitch_data_0

    const/4 p0, 0x0

    return p0

    :sswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x42 -> :sswitch_0
        0x8048 -> :sswitch_0
        0x8061 -> :sswitch_0
        0x8062 -> :sswitch_0
        0x88021 -> :sswitch_0
    .end sparse-switch
.end method

.method public static toKnownValue(I)I
    .locals 0

    return p0
.end method

.method public static validate(I)V
    .locals 1

    invoke-static {p0}, Lorg/chromium/network/mojom/HttpCacheBackendOpenFileFlags;->isKnownValue(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v0, "Invalid enum value."

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
