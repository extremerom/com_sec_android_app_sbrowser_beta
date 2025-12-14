.class public final Lorg/chromium/attribution_reporting/mojom/TriggerRegistrationError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/attribution_reporting/mojom/TriggerRegistrationError$EnumType;
    }
.end annotation


# static fields
.field public static final AGGREGATABLE_DEDUP_KEY_VALUE_INVALID:I = 0x18

.field public static final AGGREGATABLE_DEDUP_KEY_WRONG_TYPE:I = 0x19

.field public static final AGGREGATABLE_FILTERING_IDS_MAX_BYTES_INVALID_SOURCE_REGISTRATION_TIME_CONFIG:I = 0x1f

.field public static final AGGREGATABLE_FILTERING_ID_MAX_BYTES_INVALID_VALUE:I = 0x1e

.field public static final AGGREGATABLE_NAMED_BUDGET_NAME_INVALID:I = 0x23

.field public static final AGGREGATABLE_NAMED_BUDGET_WRONG_TYPE:I = 0x22

.field public static final AGGREGATABLE_SOURCE_REGISTRATION_TIME_VALUE_INVALID:I = 0x1a

.field public static final AGGREGATABLE_TRIGGER_DATA_KEY_PIECE_INVALID:I = 0x12

.field public static final AGGREGATABLE_TRIGGER_DATA_KEY_PIECE_MISSING:I = 0x10

.field public static final AGGREGATABLE_TRIGGER_DATA_SOURCE_KEYS_INVALID:I = 0x11

.field public static final AGGREGATABLE_TRIGGER_DATA_WRONG_TYPE:I = 0xf

.field public static final AGGREGATABLE_VALUES_KEY_TOO_LONG:I = 0xa

.field public static final AGGREGATABLE_VALUES_LIST_KEY_TOO_LONG:I = 0xd

.field public static final AGGREGATABLE_VALUES_LIST_VALUES_FIELD_MISSING:I = 0xb

.field public static final AGGREGATABLE_VALUES_LIST_VALUE_INVALID:I = 0xe

.field public static final AGGREGATABLE_VALUES_VALUE_INVALID:I = 0xc

.field public static final AGGREGATABLE_VALUES_WRONG_TYPE:I = 0x9

.field public static final AGGREGATION_COORDINATOR_VALUE_INVALID:I = 0x17

.field public static final ATTRIBUTION_SCOPES_INVALID:I = 0x20

.field public static final ATTRIBUTION_SCOPES_VALUE_INVALID:I = 0x21

.field public static final EVENT_DEDUP_KEY_VALUE_INVALID:I = 0x16

.field public static final EVENT_PRIORITY_VALUE_INVALID:I = 0x15

.field public static final EVENT_TRIGGER_DATA_VALUE_INVALID:I = 0x14

.field public static final EVENT_TRIGGER_DATA_WRONG_TYPE:I = 0x13

.field public static final EVENT_VALUE_INVALID:I = 0x1d

.field public static final FILTERS_LIST_LOOKBACK_WINDOW_VALUE_INVALID:I = 0x7

.field public static final FILTERS_LIST_USING_RESERVED_KEY:I = 0x8

.field public static final FILTERS_LIST_VALUE_INVALID:I = 0x6

.field public static final FILTERS_LOOKBACK_WINDOW_VALUE_INVALID:I = 0x4

.field public static final FILTERS_USING_RESERVED_KEY:I = 0x5

.field public static final FILTERS_VALUE_INVALID:I = 0x3

.field public static final FILTERS_WRONG_TYPE:I = 0x2

.field public static final INVALID_JSON:I = 0x0

.field public static final MAX_VALUE:I = 0x23

.field public static final MIN_VALUE:I = 0x0

.field public static final ROOT_WRONG_TYPE:I = 0x1

.field public static final TRIGGER_CONTEXT_ID_INVALID_SOURCE_REGISTRATION_TIME_CONFIG:I = 0x1c

.field public static final TRIGGER_CONTEXT_ID_INVALID_VALUE:I = 0x1b


# direct methods
.method public static isKnownValue(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x23

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

    invoke-static {p0}, Lorg/chromium/attribution_reporting/mojom/TriggerRegistrationError;->isKnownValue(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v0, "Invalid enum value."

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
