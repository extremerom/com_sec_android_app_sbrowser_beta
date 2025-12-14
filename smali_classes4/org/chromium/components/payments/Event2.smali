.class public interface abstract annotation Lorg/chromium/components/payments/Event2;
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
.field public static final ACTIVATIONLESS_SHOW:I = 0x400

.field public static final COMPLETED:I = 0x10

.field public static final COULD_NOT_SHOW:I = 0x800000

.field public static final ENUM_MAX:I = -0x80000000

.field public static final HAD_INITIAL_FORM_OF_PAYMENT:I = 0x80

.field public static final INITIATED:I = 0x0

.field public static final NO_MATCHING_CREDENTIALS:I = 0x20000000

.field public static final OPT_OUT_OFFERED:I = 0x100

.field public static final OTHER_ABORTED:I = 0x40

.field public static final PAY_CLICKED:I = 0x2

.field public static final REQUEST_METHOD_BASIC_CARD:I = 0x8000

.field public static final REQUEST_METHOD_GOOGLE:I = 0x10000

.field public static final REQUEST_METHOD_GOOGLE_PAY_AUTHENTICATION:I = 0x2000

.field public static final REQUEST_METHOD_OTHER:I = 0x20000

.field public static final REQUEST_METHOD_PLAY_BILLING:I = 0x4000

.field public static final REQUEST_METHOD_SECURE_PAYMENT_CONFIRMATION:I = 0x40000000

.field public static final REQUEST_PAYER_DATA:I = 0x4

.field public static final REQUEST_SHIPPING:I = 0x800

.field public static final SELECTED_CREDIT_CARD:I = 0x40000

.field public static final SELECTED_GOOGLE:I = 0x80000

.field public static final SELECTED_OTHER:I = 0x100000

.field public static final SELECTED_PLAY_BILLING:I = 0x200000

.field public static final SELECTED_SECURE_PAYMENT_CONFIRMATION:I = -0x80000000

.field public static final SHOWN:I = 0x1

.field public static final SKIPPED_SHOW:I = 0x8

.field public static final USER_ABORTED:I = 0x20

.field public static final USER_OPTED_OUT:I = 0x200
