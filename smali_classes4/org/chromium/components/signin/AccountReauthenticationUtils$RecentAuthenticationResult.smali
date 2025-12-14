.class public interface abstract annotation Lorg/chromium/components/signin/AccountReauthenticationUtils$RecentAuthenticationResult;
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
    name = "RecentAuthenticationResult"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final HAS_RECENT_AUTHENTICATION:I = 0x0

.field public static final NO_RECENT_AUTHENTICATION:I = 0x1

.field public static final RECENT_AUTHENTICATION_ERROR:I = 0x2
