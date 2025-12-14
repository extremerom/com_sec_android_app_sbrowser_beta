.class public interface abstract annotation Lorg/chromium/components/signin/AccountReauthenticationUtils$AccountReauthenticationEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/signin/AccountReauthenticationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "AccountReauthenticationEvent"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final COUNT:I = 0x5

.field public static final ERROR:I = 0x4

.field public static final REJECTED:I = 0x3

.field public static final STARTED:I = 0x0

.field public static final SUCCESS:I = 0x1

.field public static final SUCCESS_RECENT_AUTHENTICATION:I = 0x2
