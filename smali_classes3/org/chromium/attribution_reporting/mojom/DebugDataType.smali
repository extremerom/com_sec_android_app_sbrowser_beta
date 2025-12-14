.class public final Lorg/chromium/attribution_reporting/mojom/DebugDataType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/attribution_reporting/mojom/DebugDataType$EnumType;
    }
.end annotation


# static fields
.field public static final HEADER_PARSING_ERROR:I = 0x1c

.field public static final MAX_VALUE:I = 0x28

.field public static final MIN_VALUE:I = 0x0

.field public static final OS_SOURCE_DELEGATED:I = 0x18

.field public static final OS_TRIGGER_DELEGATED:I = 0x19

.field public static final SOURCE_CHANNEL_CAPACITY_LIMIT:I = 0x20

.field public static final SOURCE_DESTINATION_GLOBAL_RATE_LIMIT:I = 0x22

.field public static final SOURCE_DESTINATION_LIMIT:I = 0x0

.field public static final SOURCE_DESTINATION_LIMIT_REPLACED:I = 0x25

.field public static final SOURCE_DESTINATION_PER_DAY_RATE_LIMIT:I = 0x24

.field public static final SOURCE_DESTINATION_RATE_LIMIT:I = 0x5

.field public static final SOURCE_MAX_EVENT_STATES_LIMIT:I = 0x27

.field public static final SOURCE_NOISED:I = 0x1

.field public static final SOURCE_REPORTING_ORIGIN_LIMIT:I = 0x23

.field public static final SOURCE_REPORTING_ORIGIN_PER_SITE_LIMIT:I = 0x1d

.field public static final SOURCE_SCOPES_CHANNEL_CAPACITY_LIMIT:I = 0x26

.field public static final SOURCE_STORAGE_LIMIT:I = 0x2

.field public static final SOURCE_SUCCESS:I = 0x3

.field public static final SOURCE_TRIGGER_STATE_CARDINALITY_LIMIT:I = 0x21

.field public static final SOURCE_UNKNOWN_ERROR:I = 0x4

.field public static final TRIGGER_AGGREGATE_ATTRIBUTIONS_PER_SOURCE_DESTINATION_LIMIT:I = 0x1f

.field public static final TRIGGER_AGGREGATE_DEDUPLICATED:I = 0x11

.field public static final TRIGGER_AGGREGATE_EXCESSIVE_REPORTS:I = 0x16

.field public static final TRIGGER_AGGREGATE_INSUFFICIENT_BUDGET:I = 0x13

.field public static final TRIGGER_AGGREGATE_INSUFFICIENT_NAMED_BUDGET:I = 0x28

.field public static final TRIGGER_AGGREGATE_NO_CONTRIBUTIONS:I = 0x12

.field public static final TRIGGER_AGGREGATE_REPORT_WINDOW_PASSED:I = 0x15

.field public static final TRIGGER_AGGREGATE_STORAGE_LIMIT:I = 0x14

.field public static final TRIGGER_EVENT_ATTRIBUTIONS_PER_SOURCE_DESTINATION_LIMIT:I = 0x1e

.field public static final TRIGGER_EVENT_DEDUPLICATED:I = 0xa

.field public static final TRIGGER_EVENT_EXCESSIVE_REPORTS:I = 0xe

.field public static final TRIGGER_EVENT_LOW_PRIORITY:I = 0xd

.field public static final TRIGGER_EVENT_NOISE:I = 0xc

.field public static final TRIGGER_EVENT_NO_MATCHING_CONFIGURATIONS:I = 0xb

.field public static final TRIGGER_EVENT_NO_MATCHING_TRIGGER_DATA:I = 0x1b

.field public static final TRIGGER_EVENT_REPORT_WINDOW_NOT_STARTED:I = 0x1a

.field public static final TRIGGER_EVENT_REPORT_WINDOW_PASSED:I = 0x10

.field public static final TRIGGER_EVENT_STORAGE_LIMIT:I = 0xf

.field public static final TRIGGER_NO_MATCHING_FILTER_DATA:I = 0x8

.field public static final TRIGGER_NO_MATCHING_SOURCE:I = 0x6

.field public static final TRIGGER_REPORTING_ORIGIN_LIMIT:I = 0x9

.field public static final TRIGGER_UNKNOWN_ERROR:I = 0x17


# direct methods
.method public static isKnownValue(I)Z
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static toKnownValue(I)I
    .locals 0

    return p0
.end method

.method public static validate(I)V
    .locals 1

    invoke-static {p0}, Lorg/chromium/attribution_reporting/mojom/DebugDataType;->isKnownValue(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v0, "Invalid enum value."

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
