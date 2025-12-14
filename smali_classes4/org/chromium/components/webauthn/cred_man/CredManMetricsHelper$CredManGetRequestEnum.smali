.class public interface abstract annotation Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper$CredManGetRequestEnum;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "CredManGetRequestEnum"
.end annotation


# static fields
.field public static final CANCELLED:I = 0x5

.field public static final COULD_NOT_SEND_REQUEST:I = 0x1

.field public static final FAILURE:I = 0x4

.field public static final NO_CREDENTIAL_FOUND:I = 0x6

.field public static final NUM_ENTRIES:I = 0x7

.field public static final SENT_REQUEST:I = 0x0

.field public static final SUCCESS_PASSKEY:I = 0x2

.field public static final SUCCESS_PASSWORD:I = 0x3
