.class public Lorg/chromium/ui/KeyboardVisibilityDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/KeyboardVisibilityDelegate$KeyboardVisibilityListener;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static sInstance:Lorg/chromium/ui/KeyboardVisibilityDelegate;


# instance fields
.field private final mKeyboardVisibilityListeners:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList<",
            "Lorg/chromium/ui/KeyboardVisibilityDelegate$KeyboardVisibilityListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/ui/KeyboardVisibilityDelegate;

    invoke-direct {v0}, Lorg/chromium/ui/KeyboardVisibilityDelegate;-><init>()V

    sput-object v0, Lorg/chromium/ui/KeyboardVisibilityDelegate;->sInstance:Lorg/chromium/ui/KeyboardVisibilityDelegate;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/KeyboardVisibilityDelegate;->mKeyboardVisibilityListeners:Lorg/chromium/base/ObserverList;

    return-void
.end method

.method public static getInstance()Lorg/chromium/ui/KeyboardVisibilityDelegate;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lorg/chromium/ui/KeyboardVisibilityDelegate;->sInstance:Lorg/chromium/ui/KeyboardVisibilityDelegate;

    return-object v0
.end method

.method public static setInstance(Lorg/chromium/ui/KeyboardVisibilityDelegate;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sput-object p0, Lorg/chromium/ui/KeyboardVisibilityDelegate;->sInstance:Lorg/chromium/ui/KeyboardVisibilityDelegate;

    return-void
.end method


# virtual methods
.method public addKeyboardVisibilityListener(Lorg/chromium/ui/KeyboardVisibilityDelegate$KeyboardVisibilityListener;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/ui/KeyboardVisibilityDelegate;->mKeyboardVisibilityListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/ui/KeyboardVisibilityDelegate;->registerKeyboardVisibilityCallbacks()V

    :cond_0
    iget-object p0, p0, Lorg/chromium/ui/KeyboardVisibilityDelegate;->mKeyboardVisibilityListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    return-void
.end method

.method public hasKeyboardVisibilityListeners()Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/KeyboardVisibilityDelegate;->mKeyboardVisibilityListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0}, Lorg/chromium/base/ObserverList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public hideKeyboard(Landroid/view/View;)Z
    .locals 0

    invoke-static {p1}, Lorg/chromium/ui/KeyboardUtils;->hideAndroidSoftKeyboard(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public isKeyboardShowing(Landroid/content/Context;Landroid/view/View;)Z
    .locals 0

    invoke-static {p2}, Lorg/chromium/ui/KeyboardUtils;->isAndroidSoftKeyboardShowing(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public notifyListeners(Z)V
    .locals 1

    iget-object p0, p0, Lorg/chromium/ui/KeyboardVisibilityDelegate;->mKeyboardVisibilityListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/KeyboardVisibilityDelegate$KeyboardVisibilityListener;

    invoke-interface {v0, p1}, Lorg/chromium/ui/KeyboardVisibilityDelegate$KeyboardVisibilityListener;->keyboardVisibilityChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registerKeyboardVisibilityCallbacks()V
    .locals 0

    return-void
.end method

.method public removeKeyboardVisibilityListener(Lorg/chromium/ui/KeyboardVisibilityDelegate$KeyboardVisibilityListener;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/ui/KeyboardVisibilityDelegate;->mKeyboardVisibilityListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/chromium/ui/KeyboardVisibilityDelegate;->mKeyboardVisibilityListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {p1}, Lorg/chromium/base/ObserverList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/ui/KeyboardVisibilityDelegate;->unregisterKeyboardVisibilityCallbacks()V

    :cond_0
    return-void
.end method

.method public unregisterKeyboardVisibilityCallbacks()V
    .locals 0

    return-void
.end method
