.class public Lorg/chromium/content/browser/selection/MagnifierWrapperImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/browser/selection/MagnifierWrapper;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mCallback:Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl$ReadbackViewCallback;

.field private mMagnifier:Landroid/widget/Magnifier;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl$ReadbackViewCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/content/browser/selection/MagnifierWrapperImpl;->mCallback:Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl$ReadbackViewCallback;

    return-void
.end method


# virtual methods
.method public childLocalSurfaceIdChanged()V
    .locals 0

    return-void
.end method

.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/selection/MagnifierWrapperImpl;->mMagnifier:Landroid/widget/Magnifier;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Magnifier;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/selection/MagnifierWrapperImpl;->mMagnifier:Landroid/widget/Magnifier;

    :cond_0
    return-void
.end method

.method public isAvailable()Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/selection/MagnifierWrapperImpl;->mCallback:Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl$ReadbackViewCallback;

    invoke-interface {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl$ReadbackViewCallback;->getReadbackView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public show(FF)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/selection/MagnifierWrapperImpl;->mCallback:Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl$ReadbackViewCallback;

    invoke-interface {v0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl$ReadbackViewCallback;->getReadbackView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/chromium/content/browser/selection/MagnifierWrapperImpl;->mMagnifier:Landroid/widget/Magnifier;

    if-nez v1, :cond_1

    new-instance v1, Landroid/widget/Magnifier;

    invoke-direct {v1, v0}, Landroid/widget/Magnifier;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lorg/chromium/content/browser/selection/MagnifierWrapperImpl;->mMagnifier:Landroid/widget/Magnifier;

    :cond_1
    iget-object p0, p0, Lorg/chromium/content/browser/selection/MagnifierWrapperImpl;->mMagnifier:Landroid/widget/Magnifier;

    invoke-virtual {p0, p1, p2}, Landroid/widget/Magnifier;->show(FF)V

    return-void
.end method
