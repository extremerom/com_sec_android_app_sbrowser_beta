.class public interface abstract annotation Lorg/chromium/components/safe_browsing/SafeBrowsingApiHandler$LookupResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/safe_browsing/SafeBrowsingApiHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "LookupResult"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final FAILURE:I = 0x1

.field public static final FAILURE_API_CALL_TIMEOUT:I = 0x2

.field public static final FAILURE_API_NOT_AVAILABLE:I = 0x4

.field public static final FAILURE_API_UNSUPPORTED:I = 0x3

.field public static final FAILURE_HANDLER_NULL:I = 0x5

.field public static final SUCCESS:I
