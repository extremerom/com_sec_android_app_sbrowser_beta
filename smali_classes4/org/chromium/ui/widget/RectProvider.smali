.class public Lorg/chromium/ui/widget/RectProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/widget/RectProvider$Observer;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mObserver:Lorg/chromium/ui/widget/RectProvider$Observer;

.field protected final mRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/widget/RectProvider;->mRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getRect()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/widget/RectProvider;->mRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public notifyRectChanged()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/widget/RectProvider;->mObserver:Lorg/chromium/ui/widget/RectProvider$Observer;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/chromium/ui/widget/RectProvider$Observer;->onRectChanged()V

    :cond_0
    return-void
.end method

.method public notifyRectHidden()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/widget/RectProvider;->mObserver:Lorg/chromium/ui/widget/RectProvider$Observer;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/chromium/ui/widget/RectProvider$Observer;->onRectHidden()V

    :cond_0
    return-void
.end method

.method public startObserving(Lorg/chromium/ui/widget/RectProvider$Observer;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/ui/widget/RectProvider;->mObserver:Lorg/chromium/ui/widget/RectProvider$Observer;

    return-void
.end method

.method public stopObserving()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/ui/widget/RectProvider;->mObserver:Lorg/chromium/ui/widget/RectProvider$Observer;

    return-void
.end method
