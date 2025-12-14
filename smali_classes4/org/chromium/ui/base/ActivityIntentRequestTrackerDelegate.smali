.class public Lorg/chromium/ui/base/ActivityIntentRequestTrackerDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/ui/base/IntentRequestTracker$Delegate;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mActivityWeakRefHolder:Lorg/chromium/ui/base/ImmutableWeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/ui/base/ImmutableWeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/chromium/ui/base/ImmutableWeakReference;

    invoke-direct {v0, p1}, Lorg/chromium/ui/base/ImmutableWeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/chromium/ui/base/ActivityIntentRequestTrackerDelegate;->mActivityWeakRefHolder:Lorg/chromium/ui/base/ImmutableWeakReference;

    return-void
.end method


# virtual methods
.method public startActivityForResult(Landroid/content/Intent;I)Z
    .locals 1

    iget-object p0, p0, Lorg/chromium/ui/base/ActivityIntentRequestTrackerDelegate;->mActivityWeakRefHolder:Lorg/chromium/ui/base/ImmutableWeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;I)Z
    .locals 7

    iget-object p0, p0, Lorg/chromium/ui/base/ActivityIntentRequestTrackerDelegate;->mActivityWeakRefHolder:Lorg/chromium/ui/base/ImmutableWeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    const/4 p0, 0x0

    if-nez v0, :cond_0

    return p0

    :cond_0
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    :catch_0
    return p0
.end method
