.class public Lorg/chromium/ui/util/AccessibilityUtil;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/ui/accessibility/AccessibilityState$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/util/AccessibilityUtil$Observer;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mObservers:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList<",
            "Lorg/chromium/ui/util/AccessibilityUtil$Observer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private getObservers()Lorg/chromium/base/ObserverList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/chromium/base/ObserverList<",
            "Lorg/chromium/ui/util/AccessibilityUtil$Observer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/chromium/ui/util/AccessibilityUtil;->mObservers:Lorg/chromium/base/ObserverList;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/util/AccessibilityUtil;->mObservers:Lorg/chromium/base/ObserverList;

    :cond_0
    iget-object p0, p0, Lorg/chromium/ui/util/AccessibilityUtil;->mObservers:Lorg/chromium/base/ObserverList;

    return-object p0
.end method

.method private notifyModeChange(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/chromium/ui/util/AccessibilityUtil;->getObservers()Lorg/chromium/base/ObserverList;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/util/AccessibilityUtil$Observer;

    invoke-interface {v0, p1}, Lorg/chromium/ui/util/AccessibilityUtil$Observer;->onAccessibilityModeChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public onAccessibilityStateChanged(Lorg/chromium/ui/accessibility/AccessibilityState$State;Lorg/chromium/ui/accessibility/AccessibilityState$State;)V
    .locals 0

    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityState;->isAccessibilityEnabled()Z

    move-result p1

    invoke-direct {p0, p1}, Lorg/chromium/ui/util/AccessibilityUtil;->notifyModeChange(Z)V

    return-void
.end method
