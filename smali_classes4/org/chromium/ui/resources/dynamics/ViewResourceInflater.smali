.class public Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/resources/dynamics/ViewResourceInflater$ViewInflaterOnDrawListener;,
        Lorg/chromium/ui/resources/dynamics/ViewResourceInflater$ViewInflaterAdapter;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mContainer:Landroid/view/ViewGroup;

.field private mIsAttached:Z

.field private mIsInvalidated:Z

.field private mOnDrawListener:Lorg/chromium/ui/resources/dynamics/ViewResourceInflater$ViewInflaterOnDrawListener;

.field private mResourceAdapter:Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;

.field private mView:Landroid/view/View;


# direct methods
.method public static bridge synthetic a(Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->invalidateResource()V

    return-void
.end method

.method private detachView()V
    .locals 2

    iget-boolean v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mIsAttached:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mView:Landroid/view/View;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mOnDrawListener:Lorg/chromium/ui/resources/dynamics/ViewResourceInflater$ViewInflaterOnDrawListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mOnDrawListener:Lorg/chromium/ui/resources/dynamics/ViewResourceInflater$ViewInflaterOnDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mOnDrawListener:Lorg/chromium/ui/resources/dynamics/ViewResourceInflater$ViewInflaterOnDrawListener;

    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mIsAttached:Z

    :cond_1
    return-void
.end method

.method private invalidateResource()V
    .locals 2

    iget-boolean v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mIsInvalidated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mResourceAdapter:Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mIsInvalidated:Z

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->invalidate(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCaptureEnd()V
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->shouldDetachViewAfterCapturing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->detachView()V

    :cond_0
    return-void
.end method

.method public shouldDetachViewAfterCapturing()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
