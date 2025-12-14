.class public interface abstract Lorg/chromium/ui/base/IntentRequestTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/base/IntentRequestTracker$Delegate;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# direct methods
.method public static createFromActivity(Landroid/app/Activity;)Lorg/chromium/ui/base/IntentRequestTracker;
    .locals 2

    new-instance v0, Lorg/chromium/ui/base/IntentRequestTrackerImpl;

    new-instance v1, Lorg/chromium/ui/base/ActivityIntentRequestTrackerDelegate;

    invoke-direct {v1, p0}, Lorg/chromium/ui/base/ActivityIntentRequestTrackerDelegate;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, v1}, Lorg/chromium/ui/base/IntentRequestTrackerImpl;-><init>(Lorg/chromium/ui/base/IntentRequestTracker$Delegate;)V

    return-object v0
.end method


# virtual methods
.method public abstract onActivityResult(IILandroid/content/Intent;)Z
.end method

.method public abstract restoreInstanceState(Landroid/os/Bundle;)V
.end method
