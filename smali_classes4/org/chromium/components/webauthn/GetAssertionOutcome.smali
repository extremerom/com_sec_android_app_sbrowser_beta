.class public interface abstract annotation Lorg/chromium/components/webauthn/GetAssertionOutcome;
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
.field public static final CREDENTIAL_NOT_RECOGNIZED:I = 0x3

.field public static final ENCLAVE_ERROR:I = 0xc

.field public static final FILTER_BLOCK:I = 0xb

.field public static final HARD_PIN_BLOCK:I = 0x8

.field public static final HYBRID_TRANSPORT_ERROR:I = 0xa

.field public static final OTHER_FAILURE:I = 0xe

.field public static final PLATFORM_NOT_ALLOWED:I = 0x9

.field public static final RK_NOT_SUPPORTED:I = 0x5

.field public static final SECURITY_ERROR:I = 0x1

.field public static final SOFT_PIN_BLOCK:I = 0x7

.field public static final SUCCESS:I = 0x0

.field public static final UI_TIMEOUT:I = 0xd

.field public static final UNKNOWN_RESPONSE_FROM_AUTHENTICATOR:I = 0x4

.field public static final USER_CANCELLATION:I = 0x2

.field public static final UV_NOT_SUPPORTED:I = 0x6
