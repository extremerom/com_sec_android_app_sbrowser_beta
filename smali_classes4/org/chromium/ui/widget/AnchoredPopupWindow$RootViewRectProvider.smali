.class Lorg/chromium/ui/widget/AnchoredPopupWindow$RootViewRectProvider;
.super Lorg/chromium/ui/widget/RectProvider;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/ui/widget/AnchoredPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RootViewRectProvider"
.end annotation


# instance fields
.field private final mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/ui/widget/RectProvider;-><init>()V

    iput-object p1, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow$RootViewRectProvider;->mRootView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-direct {p0}, Lorg/chromium/ui/widget/AnchoredPopupWindow$RootViewRectProvider;->cacheWindowVisibleDisplayFrameRect()V

    return-void
.end method

.method private cacheWindowVisibleDisplayFrameRect()V
    .locals 3

    iget-object v0, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow$RootViewRectProvider;->mRootView:Landroid/view/View;

    iget-object v1, p0, Lorg/chromium/ui/widget/RectProvider;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow$RootViewRectProvider;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object p0, p0, Lorg/chromium/ui/widget/RectProvider;->mRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    aget v1, v0, v1

    neg-int v1, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    neg-int v0, v0

    invoke-virtual {p0, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/ui/widget/AnchoredPopupWindow$RootViewRectProvider;->cacheWindowVisibleDisplayFrameRect()V

    return-void
.end method
