.class public interface abstract annotation Lorg/chromium/components/payments/AbortReason;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE_USE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final ABORTED_BY_MERCHANT:I = 0x1

.field public static final ABORTED_BY_USER:I = 0x0

.field public static final INSTRUMENT_DETAILS_ERROR:I = 0x5

.field public static final INVALID_DATA_FROM_RENDERER:I = 0x2

.field public static final MAX:I = 0xc

.field public static final MERCHANT_NAVIGATION:I = 0xa

.field public static final MOJO_CONNECTION_ERROR:I = 0x3

.field public static final MOJO_RENDERER_CLOSING:I = 0x4

.field public static final NO_MATCHING_PAYMENT_METHOD:I = 0x6

.field public static final NO_SUPPORTED_PAYMENT_METHOD:I = 0x7

.field public static final OTHER:I = 0x8

.field public static final USER_NAVIGATION:I = 0x9

.field public static final USER_OPTED_OUT:I = 0xb
