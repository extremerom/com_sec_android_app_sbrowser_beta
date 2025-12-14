.class public final Lorg/chromium/mojo/system/MojoResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field public static final ABORTED:I = 0xa

.field public static final ALREADY_EXISTS:I = 0x6

.field public static final BUSY:I = 0x10

.field public static final CANCELLED:I = 0x1

.field public static final DATA_LOSS:I = 0xf

.field public static final DEADLINE_EXCEEDED:I = 0x4

.field public static final FAILED_PRECONDITION:I = 0x9

.field public static final INTERNAL:I = 0xd

.field public static final INVALID_ARGUMENT:I = 0x3

.field public static final NOT_FOUND:I = 0x5

.field public static final OK:I = 0x0

.field public static final OUT_OF_RANGE:I = 0xb

.field public static final PERMISSION_DENIED:I = 0x7

.field public static final RESOURCE_EXHAUSTED:I = 0x8

.field public static final SHOULD_WAIT:I = 0x11

.field public static final UNAVAILABLE:I = 0xe

.field public static final UNIMPLEMENTED:I = 0xc

.field public static final UNKNOWN:I = 0x2


# direct methods
.method public static describe(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_1
    const-string p0, "SHOULD_WAIT"

    return-object p0

    :pswitch_2
    const-string p0, "BUSY"

    return-object p0

    :pswitch_3
    const-string p0, "DATA_LOSS"

    return-object p0

    :pswitch_4
    const-string p0, "UNAVAILABLE"

    return-object p0

    :pswitch_5
    const-string p0, "INTERNAL"

    return-object p0

    :pswitch_6
    const-string p0, "UNIMPLEMENTED"

    return-object p0

    :pswitch_7
    const-string p0, "OUT_OF_RANGE"

    return-object p0

    :pswitch_8
    const-string p0, "ABORTED"

    return-object p0

    :pswitch_9
    const-string p0, "FAILED_PRECONDITION"

    return-object p0

    :pswitch_a
    const-string p0, "RESOURCE_EXHAUSTED"

    return-object p0

    :pswitch_b
    const-string p0, "PERMISSION_DENIED"

    return-object p0

    :pswitch_c
    const-string p0, "ALREADY_EXISTS"

    return-object p0

    :pswitch_d
    const-string p0, "NOT_FOUND"

    return-object p0

    :pswitch_e
    const-string p0, "DEADLINE_EXCEEDED"

    return-object p0

    :pswitch_f
    const-string p0, "INVALID_ARGUMENT"

    return-object p0

    :pswitch_10
    const-string p0, "CANCELLED"

    return-object p0

    :pswitch_11
    const-string p0, "OK"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
