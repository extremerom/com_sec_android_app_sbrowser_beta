.class public final Lorg/chromium/payments/mojom/BillingResponseCode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/payments/mojom/BillingResponseCode$EnumType;
    }
.end annotation


# static fields
.field public static final CLIENT_APP_ERROR:I = 0x6

.field public static final CLIENT_APP_UNAVAILABLE:I = 0x5

.field public static final DEFAULT_VALUE:I = 0x1

.field public static final ERROR:I = 0x1

.field public static final ITEM_ALREADY_OWNED:I = 0x2

.field public static final ITEM_NOT_OWNED:I = 0x3

.field public static final ITEM_UNAVAILABLE:I = 0x4

.field public static final MAX_VALUE:I = 0x6

.field public static final MIN_VALUE:I

.field public static final OK:I


# direct methods
.method public static isKnownValue(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/4 v0, 0x6

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static toKnownValue(I)I
    .locals 1

    invoke-static {p0}, Lorg/chromium/payments/mojom/BillingResponseCode;->isKnownValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static validate(I)V
    .locals 0

    return-void
.end method
