.class public abstract Lorg/chromium/components/externalauth/UserRecoverableErrorHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/externalauth/UserRecoverableErrorHandler$ModalDialog;,
        Lorg/chromium/components/externalauth/UserRecoverableErrorHandler$SystemNotification;,
        Lorg/chromium/components/externalauth/UserRecoverableErrorHandler$Silent;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract handle(Landroid/content/Context;I)V
.end method

.method public final handleError(Landroid/content/Context;I)V
    .locals 0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-virtual {p0, p1, p2}, Lorg/chromium/components/externalauth/UserRecoverableErrorHandler;->handle(Landroid/content/Context;I)V

    return-void
.end method
