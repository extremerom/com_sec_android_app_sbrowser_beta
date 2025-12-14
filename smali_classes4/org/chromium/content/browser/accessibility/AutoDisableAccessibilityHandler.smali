.class public Lorg/chromium/content/browser/accessibility/AutoDisableAccessibilityHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/accessibility/AutoDisableAccessibilityHandler$Client;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mClient:Lorg/chromium/content/browser/accessibility/AutoDisableAccessibilityHandler$Client;

.field private mHasPendingTimer:Z

.field private final mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/accessibility/AutoDisableAccessibilityHandler$Client;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/content/browser/accessibility/AutoDisableAccessibilityHandler;->mClient:Lorg/chromium/content/browser/accessibility/AutoDisableAccessibilityHandler$Client;

    new-instance p1, Lcom/sec/android/app/sbrowser/tab_sync/o;

    const/16 v0, 0x12

    invoke-direct {p1, v0, p0}, Lcom/sec/android/app/sbrowser/tab_sync/o;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lorg/chromium/content/browser/accessibility/AutoDisableAccessibilityHandler;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public cancelDisableTimer()V
    .locals 2

    iget-boolean v0, p0, Lorg/chromium/content/browser/accessibility/AutoDisableAccessibilityHandler;->mHasPendingTimer:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/AutoDisableAccessibilityHandler;->mClient:Lorg/chromium/content/browser/accessibility/AutoDisableAccessibilityHandler$Client;

    invoke-interface {v0}, Lorg/chromium/content/browser/accessibility/AutoDisableAccessibilityHandler$Client;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/AutoDisableAccessibilityHandler;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/accessibility/AutoDisableAccessibilityHandler;->mHasPendingTimer:Z

    return-void
.end method

.method public hasPendingTimer()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-boolean p0, p0, Lorg/chromium/content/browser/accessibility/AutoDisableAccessibilityHandler;->mHasPendingTimer:Z

    return p0
.end method

.method public notifyDisable()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/AutoDisableAccessibilityHandler;->mClient:Lorg/chromium/content/browser/accessibility/AutoDisableAccessibilityHandler$Client;

    invoke-interface {v0}, Lorg/chromium/content/browser/accessibility/AutoDisableAccessibilityHandler$Client;->onDisabled()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/accessibility/AutoDisableAccessibilityHandler;->mHasPendingTimer:Z

    return-void
.end method

.method public startDisableTimer(I)V
    .locals 4

    iget-boolean v0, p0, Lorg/chromium/content/browser/accessibility/AutoDisableAccessibilityHandler;->mHasPendingTimer:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/AutoDisableAccessibilityHandler;->mClient:Lorg/chromium/content/browser/accessibility/AutoDisableAccessibilityHandler$Client;

    invoke-interface {v0}, Lorg/chromium/content/browser/accessibility/AutoDisableAccessibilityHandler$Client;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/AutoDisableAccessibilityHandler;->mRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/chromium/content/browser/accessibility/AutoDisableAccessibilityHandler;->mHasPendingTimer:Z

    return-void
.end method
