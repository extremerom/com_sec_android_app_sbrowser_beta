.class public Lorg/chromium/ui/InsetsRectProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/ui/InsetObserver$WindowInsetsConsumer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/InsetsRectProvider$Observer;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mBoundingRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedInsets:Lf1/w0;

.field private final mInsetType:I

.field private final mObservers:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList<",
            "Lorg/chromium/ui/InsetsRectProvider$Observer;",
            ">;"
        }
    .end annotation
.end field

.field private mWidestUnoccludedRect:Landroid/graphics/Rect;

.field private final mWindowRect:Landroid/graphics/Rect;


# direct methods
.method private maybeUpdateWidestUnoccludedRect(Lf1/w0;)Z
    .locals 5

    invoke-virtual {p1}, Lf1/w0;->e()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/ui/util/WindowInsetsUtils;->getFrameFromInsets(Landroid/view/WindowInsets;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-nez v2, :cond_0

    return v3

    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-direct {v2, v3, v3, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lorg/chromium/ui/InsetsRectProvider;->mCachedInsets:Lf1/w0;

    invoke-virtual {p1, v1}, Lf1/w0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/chromium/ui/InsetsRectProvider;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lorg/chromium/ui/InsetsRectProvider;->mWidestUnoccludedRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    iput-object p1, p0, Lorg/chromium/ui/InsetsRectProvider;->mCachedInsets:Lf1/w0;

    iget-object v1, p0, Lorg/chromium/ui/InsetsRectProvider;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v1, p0, Lorg/chromium/ui/InsetsRectProvider;->mInsetType:I

    iget-object p1, p1, Lf1/w0;->a:Lf1/u0;

    invoke-virtual {p1, v1}, Lf1/u0;->f(I)LX0/b;

    move-result-object p1

    iget-object v1, p0, Lorg/chromium/ui/InsetsRectProvider;->mWindowRect:Landroid/graphics/Rect;

    invoke-static {v1, p1}, Lorg/chromium/ui/util/WindowInsetsUtils;->toRectInWindow(Landroid/graphics/Rect;LX0/b;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lorg/chromium/ui/InsetsRectProvider;->mInsetType:I

    invoke-static {v0, v1}, Lorg/chromium/ui/util/WindowInsetsUtils;->getBoundingRectsFromInsets(Landroid/view/WindowInsets;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/ui/InsetsRectProvider;->mBoundingRects:Ljava/util/List;

    invoke-static {p1, v0}, Lorg/chromium/ui/util/WindowInsetsUtils;->getWidestUnoccludedRect(Landroid/graphics/Rect;Ljava/util/List;)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/ui/InsetsRectProvider;->mWidestUnoccludedRect:Landroid/graphics/Rect;

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/ui/InsetsRectProvider;->mBoundingRects:Ljava/util/List;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/chromium/ui/InsetsRectProvider;->mWidestUnoccludedRect:Landroid/graphics/Rect;

    :goto_0
    iget-object p1, p0, Lorg/chromium/ui/InsetsRectProvider;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {p1}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/InsetsRectProvider$Observer;

    iget-object v1, p0, Lorg/chromium/ui/InsetsRectProvider;->mWidestUnoccludedRect:Landroid/graphics/Rect;

    invoke-interface {v0, v1}, Lorg/chromium/ui/InsetsRectProvider$Observer;->onBoundingRectsUpdated(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lorg/chromium/ui/InsetsRectProvider;->mWidestUnoccludedRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public buildInsets(Lf1/w0;ILX0/b;)Lf1/w0;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p0, v0, :cond_0

    new-instance p0, Lf1/n0;

    invoke-direct {p0, p1}, Lf1/n0;-><init>(Lf1/w0;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lf1/m0;

    invoke-direct {p0, p1}, Lf1/m0;-><init>(Lf1/w0;)V

    :goto_0
    invoke-virtual {p0, p2, p3}, Lf1/o0;->c(ILX0/b;)V

    invoke-virtual {p0}, Lf1/o0;->b()Lf1/w0;

    move-result-object p0

    return-object p0
.end method

.method public onApplyWindowInsets(Landroid/view/View;Lf1/w0;)Lf1/w0;
    .locals 1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-ge p1, v0, :cond_0

    return-object p2

    :cond_0
    invoke-direct {p0, p2}, Lorg/chromium/ui/InsetsRectProvider;->maybeUpdateWidestUnoccludedRect(Lf1/w0;)Z

    move-result p1

    if-nez p1, :cond_1

    return-object p2

    :cond_1
    iget p1, p0, Lorg/chromium/ui/InsetsRectProvider;->mInsetType:I

    sget-object v0, LX0/b;->e:LX0/b;

    invoke-virtual {p0, p2, p1, v0}, Lorg/chromium/ui/InsetsRectProvider;->buildInsets(Lf1/w0;ILX0/b;)Lf1/w0;

    move-result-object p0

    return-object p0
.end method
