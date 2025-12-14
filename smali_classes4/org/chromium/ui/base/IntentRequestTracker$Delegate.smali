.class public interface abstract Lorg/chromium/ui/base/IntentRequestTracker$Delegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/ui/base/IntentRequestTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Delegate"
.end annotation


# virtual methods
.method public onCallbackNotFoundError(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract startActivityForResult(Landroid/content/Intent;I)Z
.end method

.method public abstract startIntentSenderForResult(Landroid/content/IntentSender;I)Z
.end method
