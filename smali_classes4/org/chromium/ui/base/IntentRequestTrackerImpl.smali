.class final Lorg/chromium/ui/base/IntentRequestTrackerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/ui/base/IntentRequestTracker;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mDelegate:Lorg/chromium/ui/base/IntentRequestTracker$Delegate;

.field private mIntentErrors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNextRequestCode:I

.field private final mOutstandingIntents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/chromium/ui/base/WindowAndroid$IntentCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/chromium/ui/base/IntentRequestTracker$Delegate;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/base/IntentRequestTrackerImpl;->mOutstandingIntents:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/base/IntentRequestTrackerImpl;->mIntentErrors:Ljava/util/HashMap;

    iput-object p1, p0, Lorg/chromium/ui/base/IntentRequestTrackerImpl;->mDelegate:Lorg/chromium/ui/base/IntentRequestTracker$Delegate;

    return-void
.end method

.method private generateNextRequestCode()I
    .locals 2

    iget v0, p0, Lorg/chromium/ui/base/IntentRequestTrackerImpl;->mNextRequestCode:I

    add-int/lit16 v1, v0, 0x3e8

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x64

    iput v0, p0, Lorg/chromium/ui/base/IntentRequestTrackerImpl;->mNextRequestCode:I

    return v1
.end method

.method private storeCallbackData(ILorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/ui/base/IntentRequestTrackerImpl;->mOutstandingIntents:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p0, p0, Lorg/chromium/ui/base/IntentRequestTrackerImpl;->mIntentErrors:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    if-nez p3, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 2

    iget-object v0, p0, Lorg/chromium/ui/base/IntentRequestTrackerImpl;->mOutstandingIntents:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/base/WindowAndroid$IntentCallback;

    iget-object v1, p0, Lorg/chromium/ui/base/IntentRequestTrackerImpl;->mOutstandingIntents:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    iget-object v1, p0, Lorg/chromium/ui/base/IntentRequestTrackerImpl;->mIntentErrors:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2, p3}, Lorg/chromium/ui/base/WindowAndroid$IntentCallback;->onIntentCompleted(ILandroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/chromium/ui/base/IntentRequestTrackerImpl;->mDelegate:Lorg/chromium/ui/base/IntentRequestTracker$Delegate;

    invoke-interface {p0, p1}, Lorg/chromium/ui/base/IntentRequestTracker$Delegate;->onCallbackNotFoundError(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p1}, Lorg/chromium/ui/base/WindowAndroid;->showError(Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public removeIntentCallback(Lorg/chromium/ui/base/WindowAndroid$IntentCallback;)Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/ui/base/IntentRequestTrackerImpl;->mOutstandingIntents:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/base/IntentRequestTrackerImpl;->mOutstandingIntents:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object p0, p0, Lorg/chromium/ui/base/IntentRequestTrackerImpl;->mIntentErrors:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "window_callback_errors"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    instance-of v0, p1, Ljava/util/HashMap;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/util/HashMap;

    iput-object p1, p0, Lorg/chromium/ui/base/IntentRequestTrackerImpl;->mIntentErrors:Ljava/util/HashMap;

    :cond_1
    return-void
.end method

.method public showCancelableIntent(Landroid/app/PendingIntent;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)I
    .locals 2

    invoke-direct {p0}, Lorg/chromium/ui/base/IntentRequestTrackerImpl;->generateNextRequestCode()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/ui/base/IntentRequestTrackerImpl;->mDelegate:Lorg/chromium/ui/base/IntentRequestTracker$Delegate;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Lorg/chromium/ui/base/IntentRequestTracker$Delegate;->startIntentSenderForResult(Landroid/content/IntentSender;I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-direct {p0, v0, p2, p3}, Lorg/chromium/ui/base/IntentRequestTrackerImpl;->storeCallbackData(ILorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)V

    return v0
.end method

.method public showCancelableIntent(Landroid/content/Intent;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)I
    .locals 2

    invoke-direct {p0}, Lorg/chromium/ui/base/IntentRequestTrackerImpl;->generateNextRequestCode()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/ui/base/IntentRequestTrackerImpl;->mDelegate:Lorg/chromium/ui/base/IntentRequestTracker$Delegate;

    invoke-interface {v1, p1, v0}, Lorg/chromium/ui/base/IntentRequestTracker$Delegate;->startActivityForResult(Landroid/content/Intent;I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-direct {p0, v0, p2, p3}, Lorg/chromium/ui/base/IntentRequestTrackerImpl;->storeCallbackData(ILorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)V

    return v0
.end method

.method public showCancelableIntent(Lorg/chromium/base/Callback;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Integer;",
            ">;",
            "Lorg/chromium/ui/base/WindowAndroid$IntentCallback;",
            "Ljava/lang/Integer;",
            ")I"
        }
    .end annotation

    invoke-direct {p0}, Lorg/chromium/ui/base/IntentRequestTrackerImpl;->generateNextRequestCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    invoke-direct {p0, v0, p2, p3}, Lorg/chromium/ui/base/IntentRequestTrackerImpl;->storeCallbackData(ILorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)V

    return v0
.end method
