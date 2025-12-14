.class public Lorg/chromium/ui/base/ActivityWindowAndroid;
.super Lorg/chromium/ui/base/WindowAndroid;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/ApplicationStatus$ActivityStateListener;
.implements Lorg/chromium/base/ApplicationStatus$WindowFocusChangedListener;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mActivityWeakRefHolder:Lorg/chromium/ui/base/ImmutableWeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/ui/base/ImmutableWeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final mListenToActivityState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLorg/chromium/ui/base/IntentRequestTracker;Lorg/chromium/ui/InsetObserver;Z)V
    .locals 9

    new-instance v3, Lorg/chromium/ui/permissions/ActivityAndroidPermissionDelegate;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Lorg/chromium/base/ContextUtils;->activityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v3, v0}, Lorg/chromium/ui/permissions/ActivityAndroidPermissionDelegate;-><init>(Ljava/lang/ref/WeakReference;)V

    new-instance v4, Lorg/chromium/ui/base/ActivityKeyboardVisibilityDelegate;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Lorg/chromium/base/ContextUtils;->activityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v4, v0}, Lorg/chromium/ui/base/ActivityKeyboardVisibilityDelegate;-><init>(Ljava/lang/ref/WeakReference;)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lorg/chromium/ui/base/ActivityWindowAndroid;-><init>(Landroid/content/Context;ZLorg/chromium/ui/permissions/ActivityAndroidPermissionDelegate;Lorg/chromium/ui/base/ActivityKeyboardVisibilityDelegate;ZLorg/chromium/ui/base/IntentRequestTracker;Lorg/chromium/ui/InsetObserver;Z)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ZLorg/chromium/ui/permissions/ActivityAndroidPermissionDelegate;Lorg/chromium/ui/base/ActivityKeyboardVisibilityDelegate;ZLorg/chromium/ui/base/IntentRequestTracker;Lorg/chromium/ui/InsetObserver;Z)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p5

    move-object v3, p6

    move-object v4, p7

    move v5, p8

    invoke-direct/range {v0 .. v5}, Lorg/chromium/ui/base/WindowAndroid;-><init>(Landroid/content/Context;ZLorg/chromium/ui/base/IntentRequestTracker;Lorg/chromium/ui/InsetObserver;Z)V

    invoke-static {p1}, Lorg/chromium/base/ContextUtils;->activityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    iput-boolean p2, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mListenToActivityState:Z

    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Lorg/chromium/base/ApplicationStatus;->registerStateListenerForActivity(Lorg/chromium/base/ApplicationStatus$ActivityStateListener;Landroid/app/Activity;)V

    invoke-static {p0}, Lorg/chromium/base/ApplicationStatus;->registerWindowFocusChangedListener(Lorg/chromium/base/ApplicationStatus$WindowFocusChangedListener;)V

    :cond_0
    new-instance p1, Lorg/chromium/ui/base/a;

    invoke-direct {p1, p7}, Lorg/chromium/ui/base/a;-><init>(Lorg/chromium/ui/InsetObserver;)V

    invoke-static {p1}, Lorg/chromium/base/supplier/LazyOneshotSupplier;->fromSupplier(Lorg/chromium/base/supplier/Supplier;)Lorg/chromium/base/supplier/LazyOneshotSupplier;

    move-result-object p1

    invoke-virtual {p4, p1}, Lorg/chromium/ui/base/ActivityKeyboardVisibilityDelegate;->setLazyKeyboardInsetSupplier(Lorg/chromium/base/supplier/LazyOneshotSupplier;)V

    invoke-virtual {p0, p4}, Lorg/chromium/ui/base/WindowAndroid;->setKeyboardDelegate(Lorg/chromium/ui/KeyboardVisibilityDelegate;)V

    invoke-virtual {p0, p3}, Lorg/chromium/ui/base/WindowAndroid;->setAndroidPermissionDelegate(Lorg/chromium/ui/permissions/AndroidPermissionDelegate;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Context is not and does not wrap an Activity"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic g(Lorg/chromium/ui/InsetObserver;)Lorg/chromium/base/supplier/ObservableSupplier;
    .locals 0

    invoke-static {p0}, Lorg/chromium/ui/base/ActivityWindowAndroid;->lambda$new$0(Lorg/chromium/ui/InsetObserver;)Lorg/chromium/base/supplier/ObservableSupplier;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$new$0(Lorg/chromium/ui/InsetObserver;)Lorg/chromium/base/supplier/ObservableSupplier;
    .locals 0

    if-nez p0, :cond_0

    new-instance p0, Lorg/chromium/base/supplier/ObservableSupplierImpl;

    invoke-direct {p0}, Lorg/chromium/base/supplier/ObservableSupplierImpl;-><init>()V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/ui/InsetObserver;->getSupplierForKeyboardInset()Lorg/chromium/base/supplier/ObservableSupplier;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getActivity()Ljava/lang/ref/WeakReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mActivityWeakRefHolder:Lorg/chromium/ui/base/ImmutableWeakReference;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/ui/base/ImmutableWeakReference;

    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->getContext()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lorg/chromium/base/ContextUtils;->activityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/chromium/ui/base/ImmutableWeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mActivityWeakRefHolder:Lorg/chromium/ui/base/ImmutableWeakReference;

    :cond_0
    iget-object p0, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mActivityWeakRefHolder:Lorg/chromium/ui/base/ImmutableWeakReference;

    return-object p0
.end method

.method public bridge synthetic getKeyboardDelegate()Lorg/chromium/ui/KeyboardVisibilityDelegate;
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/ui/base/ActivityWindowAndroid;->getKeyboardDelegate()Lorg/chromium/ui/base/ActivityKeyboardVisibilityDelegate;

    move-result-object p0

    return-object p0
.end method

.method public getKeyboardDelegate()Lorg/chromium/ui/base/ActivityKeyboardVisibilityDelegate;
    .locals 0

    invoke-super {p0}, Lorg/chromium/ui/base/WindowAndroid;->getKeyboardDelegate()Lorg/chromium/ui/KeyboardVisibilityDelegate;

    move-result-object p0

    check-cast p0, Lorg/chromium/ui/base/ActivityKeyboardVisibilityDelegate;

    return-object p0
.end method

.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->onActivityStopped()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-ne p2, p1, :cond_1

    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->onActivityStarted()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    if-ne p2, p1, :cond_2

    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->onActivityPaused()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    if-ne p2, p1, :cond_3

    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->onActivityResumed()V

    goto :goto_0

    :cond_3
    const/4 p1, 0x6

    if-ne p2, p1, :cond_4

    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->onActivityDestroyed()V

    invoke-static {p0}, Lorg/chromium/base/ApplicationStatus;->unregisterWindowFocusChangedListener(Lorg/chromium/base/ApplicationStatus$WindowFocusChangedListener;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onWindowFocusChanged(Landroid/app/Activity;Z)V
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/ui/base/ActivityWindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0, p2}, Lorg/chromium/ui/base/WindowAndroid;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method
