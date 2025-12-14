.class public final Lorg/chromium/blink/mojom/InterestGroup$TrustedBiddingSignalsSlotSizeMode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/InterestGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrustedBiddingSignalsSlotSizeMode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/InterestGroup$TrustedBiddingSignalsSlotSizeMode$EnumType;
    }
.end annotation


# static fields
.field public static final ALL_SLOTS_REQUESTED_SIZES:I = 0x2

.field public static final DEFAULT_VALUE:I = 0x0

.field public static final MAX_VALUE:I = 0x2

.field public static final MIN_VALUE:I = 0x0

.field public static final NONE:I = 0x0

.field public static final SLOT_SIZE:I = 0x1


# direct methods
.method public static isKnownValue(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/4 v0, 0x2

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

    invoke-static {p0}, Lorg/chromium/blink/mojom/InterestGroup$TrustedBiddingSignalsSlotSizeMode;->isKnownValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static validate(I)V
    .locals 0

    return-void
.end method
