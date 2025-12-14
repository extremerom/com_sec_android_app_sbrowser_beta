.class public interface abstract annotation Lorg/chromium/content/browser/sms/SmsVerificationReceiver$BackendAvailability;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/sms/SmsVerificationReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "BackendAvailability"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final API_NOT_AVAILABLE:I = 0x3

.field public static final API_NOT_CONNECTED:I = 0x1

.field public static final AVAILABLE:I = 0x0

.field public static final NUM_ENTRIES:I = 0x4

.field public static final PLATFORM_NOT_SUPPORTED:I = 0x2
