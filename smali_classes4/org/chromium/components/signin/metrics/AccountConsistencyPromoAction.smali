.class public interface abstract annotation Lorg/chromium/components/signin/metrics/AccountConsistencyPromoAction;
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
.field public static final ADD_ACCOUNT_COMPLETED:I = 0xf

.field public static final ADD_ACCOUNT_COMPLETED_WITH_NO_DEVICE_ACCOUNT:I = 0x16

.field public static final ADD_ACCOUNT_STARTED:I = 0x2

.field public static final ADD_ACCOUNT_STARTED_WITH_NO_DEVICE_ACCOUNT:I = 0x15

.field public static final AUTH_ERROR_SHOWN:I = 0xc

.field public static final CONFIRM_MANAGEMENT_ACCEPTED:I = 0x19

.field public static final CONFIRM_MANAGEMENT_SHOWN:I = 0x18

.field public static final DISMISSED_BACK:I = 0x1

.field public static final DISMISSED_BUTTON:I = 0xe

.field public static final DISMISSED_OTHER:I = 0xb

.field public static final DISMISSED_SCRIM:I = 0x9

.field public static final DISMISSED_SWIPE_DOWN:I = 0xa

.field public static final GENERIC_ERROR_SHOWN:I = 0xd

.field public static final IOS_AUTH_FLOW_CANCELLED_OR_FAILED:I = 0x13

.field public static final MAX_VALUE:I = 0x19

.field public static final SHOWN:I = 0x6

.field public static final SHOWN_WITH_NO_DEVICE_ACCOUNT:I = 0x14

.field public static final SIGNED_IN_WITH_ADDED_ACCOUNT:I = 0x8

.field public static final SIGNED_IN_WITH_DEFAULT_ACCOUNT:I = 0x4

.field public static final SIGNED_IN_WITH_NON_DEFAULT_ACCOUNT:I = 0x5

.field public static final SIGNED_IN_WITH_NO_DEVICE_ACCOUNT:I = 0x17

.field public static final SUPPRESSED_ALREADY_SIGNED_IN:I = 0x12

.field public static final SUPPRESSED_CONSECUTIVE_DISMISSALS:I = 0x10

.field public static final SUPPRESSED_NO_ACCOUNTS:I = 0x0

.field public static final SUPPRESSED_SIGNIN_NOT_ALLOWED:I = 0x7

.field public static final TIMEOUT_ERROR_SHOWN:I = 0x11
