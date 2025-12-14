.class public Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/ui/resources/dynamics/DynamicResource;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lorg/chromium/ui/resources/dynamics/CaptureObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter$CaptureMechanism;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mCaptureMechanism:Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter$CaptureMechanism;

.field private final mDirtyRect:Landroid/graphics/Rect;

.field private final mOnResourceReadyObservers:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList<",
            "Lorg/chromium/base/Callback<",
            "Lorg/chromium/ui/resources/Resource;",
            ">;>;"
        }
    .end annotation
.end field

.field private mScale:F

.field private final mThreadChecker:Lorg/chromium/base/ThreadUtils$ThreadChecker;

.field private final mView:Landroid/view/View;

.field private final mViewSize:Landroid/graphics/Rect;


# direct methods
.method public static synthetic a(Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->onCapture(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private onCapture(Landroid/graphics/Bitmap;)V
    .locals 4

    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mThreadChecker:Lorg/chromium/base/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lorg/chromium/base/ThreadUtils$ThreadChecker;->assertOnValidThread()V

    new-instance v0, Lorg/chromium/ui/resources/dynamics/DynamicResourceSnapshot;

    iget-object v1, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mViewSize:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->createNativeResource()J

    move-result-wide v2

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/chromium/ui/resources/dynamics/DynamicResourceSnapshot;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;J)V

    iget-object p0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mOnResourceReadyObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/base/Callback;

    invoke-interface {p1, v0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public createNativeResource()J
    .locals 2

    const/4 p0, 0x0

    invoke-static {p0}, Lorg/chromium/ui/resources/ResourceFactory;->createBitmapResource(Lorg/chromium/ui/resources/statics/NinePatchData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDirtyRect()Landroid/graphics/Rect;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mDirtyRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mDirtyRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object p0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method public isDirty()Z
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iget-object p0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    sub-int/2addr p8, p6

    sub-int/2addr p9, p7

    if-ne p4, p8, :cond_0

    if-eq p5, p9, :cond_1

    :cond_0
    iget-object p1, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mViewSize:Landroid/graphics/Rect;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p2, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mCaptureMechanism:Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter$CaptureMechanism;

    iget-object p2, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mView:Landroid/view/View;

    iget p0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mScale:F

    invoke-interface {p1, p2, p0}, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter$CaptureMechanism;->onViewSizeChange(Landroid/view/View;F)V

    :cond_1
    return-void
.end method

.method public onResourceRequested()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mOnResourceReadyObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->triggerBitmapCapture()V

    :cond_0
    return-void
.end method

.method public removeOnResourceReadyCallback(Lorg/chromium/base/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/Callback<",
            "Lorg/chromium/ui/resources/Resource;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mOnResourceReadyObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0, p1}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    return-void
.end method

.method public triggerBitmapCapture()V
    .locals 7

    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mThreadChecker:Lorg/chromium/base/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lorg/chromium/base/ThreadUtils$ThreadChecker;->assertOnValidThread()V

    const-string v0, "ViewResourceAdapter:getBitmap"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->scoped(Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mCaptureMechanism:Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter$CaptureMechanism;

    iget-object v2, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mView:Landroid/view/View;

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mDirtyRect:Landroid/graphics/Rect;

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v4, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mScale:F

    new-instance v6, Lcom/sec/terrace/a;

    const/16 v5, 0xd

    invoke-direct {v6, v5, p0}, Lcom/sec/terrace/a;-><init>(ILjava/lang/Object;)V

    move-object v5, p0

    invoke-interface/range {v1 .. v6}, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter$CaptureMechanism;->startBitmapCapture(Landroid/view/View;Landroid/graphics/Rect;FLorg/chromium/ui/resources/dynamics/CaptureObserver;Lorg/chromium/base/Callback;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/base/TraceEvent;->close()V

    :cond_1
    return-void

    :goto_1
    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Lorg/chromium/base/TraceEvent;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw p0
.end method
