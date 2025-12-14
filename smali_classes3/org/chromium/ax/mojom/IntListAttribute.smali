.class public final Lorg/chromium/ax/mojom/IntListAttribute;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ax/mojom/IntListAttribute$EnumType;
    }
.end annotation


# static fields
.field public static final ACTIONS_IDS:I = 0x1d

.field public static final ARIA_NOTIFICATION_INTERRUPT_PROPERTIES:I = 0x1b

.field public static final ARIA_NOTIFICATION_PRIORITY_PROPERTIES:I = 0x1c

.field public static final CARET_BOUNDS:I = 0x10

.field public static final CHARACTER_OFFSETS:I = 0xb

.field public static final CONTROLS_IDS:I = 0x2

.field public static final CUSTOM_ACTION_IDS:I = 0xf

.field public static final DEFAULT_VALUE:I = 0x0

.field public static final DESCRIBEDBY_IDS:I = 0x4

.field public static final DETAILS_IDS:I = 0x3

.field public static final ERRORMESSAGE_IDS:I = 0x1a

.field public static final FLOWTO_IDS:I = 0x5

.field public static final HIGHLIGHT_TYPES:I = 0x14

.field public static final INDIRECT_CHILD_IDS:I = 0x1

.field public static final LABELLEDBY_IDS:I = 0x6

.field public static final LINE_ENDS:I = 0x11

.field public static final LINE_STARTS:I = 0xc

.field public static final MARKER_ENDS:I = 0xa

.field public static final MARKER_STARTS:I = 0x9

.field public static final MARKER_TYPES:I = 0x8

.field public static final MAX_VALUE:I = 0x1d

.field public static final MIN_VALUE:I = 0x0

.field public static final NONE:I = 0x0

.field public static final RADIO_GROUP_IDS:I = 0x7

.field public static final SENTENCE_ENDS:I = 0x13

.field public static final SENTENCE_STARTS:I = 0x12

.field public static final TEXT_OPERATIONS:I = 0x19

.field public static final TEXT_OPERATION_END_ANCHOR_IDS:I = 0x17

.field public static final TEXT_OPERATION_END_OFFSETS:I = 0x18

.field public static final TEXT_OPERATION_START_ANCHOR_IDS:I = 0x15

.field public static final TEXT_OPERATION_START_OFFSETS:I = 0x16

.field public static final WORD_ENDS:I = 0xe

.field public static final WORD_STARTS:I = 0xd


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
    .locals 1

    invoke-static {p0}, Lorg/chromium/ax/mojom/IntListAttribute;->isKnownValue(I)Z

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
