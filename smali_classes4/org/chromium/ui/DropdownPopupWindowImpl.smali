.class Lorg/chromium/ui/DropdownPopupWindowImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/ui/widget/AnchoredPopupWindow$LayoutObserver;
.implements Lorg/chromium/ui/DropdownPopupWindowInterface;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field mAdapter:Landroid/widget/ListAdapter;

.field private final mAnchorView:Landroid/view/View;

.field private mAnchoredPopupWindow:Lorg/chromium/ui/widget/AnchoredPopupWindow;

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private final mContext:Landroid/content/Context;

.field private mDescription:Ljava/lang/CharSequence;

.field private mHorizontalPadding:I

.field private mInitialSelection:I

.field private mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private final mListView:Landroid/widget/ListView;

.field private mRtl:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lorg/chromium/ui/widget/RectProvider;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/ui/DropdownPopupWindowImpl;->mInitialSelection:I

    iput-object p1, p0, Lorg/chromium/ui/DropdownPopupWindowImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lorg/chromium/ui/DropdownPopupWindowImpl;->mAnchorView:Landroid/view/View;

    sget v0, Lorg/chromium/ui/R$id;->dropdown_popup_window:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setId(I)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v0, Lorg/chromium/ui/DropdownPopupWindowImpl$1;

    invoke-direct {v0, p0}, Lorg/chromium/ui/DropdownPopupWindowImpl$1;-><init>(Lorg/chromium/ui/DropdownPopupWindowImpl;)V

    iput-object v0, p0, Lorg/chromium/ui/DropdownPopupWindowImpl;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    new-instance v0, Lorg/chromium/ui/DropdownPopupWindowImpl$2;

    invoke-direct {v0, p0}, Lorg/chromium/ui/DropdownPopupWindowImpl$2;-><init>(Lorg/chromium/ui/DropdownPopupWindowImpl;)V

    new-instance v5, Landroid/widget/ListView;

    invoke-direct {v5, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lorg/chromium/ui/DropdownPopupWindowImpl;->mListView:Landroid/widget/ListView;

    new-instance v8, Lorg/chromium/ui/widget/ViewRectProvider;

    invoke-direct {v8, p2}, Lorg/chromium/ui/widget/ViewRectProvider;-><init>(Landroid/view/View;)V

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lorg/chromium/ui/widget/ViewRectProvider;->setIncludePadding(Z)V

    sget v1, Lorg/chromium/ui/R$drawable;->menu_bg_baseline:I

    invoke-static {v1, p1}, Ll5/a;->a(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lorg/chromium/ui/DropdownPopupWindowImpl;->mBackground:Landroid/graphics/drawable/Drawable;

    new-instance v10, Lorg/chromium/ui/widget/AnchoredPopupWindow;

    move-object v1, v10

    move-object v2, p1

    move-object v3, p2

    move-object v6, v8

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lorg/chromium/ui/widget/AnchoredPopupWindow;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/view/View;Lorg/chromium/ui/widget/RectProvider;Lorg/chromium/ui/widget/RectProvider;)V

    iput-object v10, p0, Lorg/chromium/ui/DropdownPopupWindowImpl;->mAnchoredPopupWindow:Lorg/chromium/ui/widget/AnchoredPopupWindow;

    invoke-virtual {v10, v0}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->addOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object p2, p0, Lorg/chromium/ui/DropdownPopupWindowImpl;->mAnchoredPopupWindow:Lorg/chromium/ui/widget/AnchoredPopupWindow;

    invoke-virtual {p2, p0}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->setLayoutObserver(Lorg/chromium/ui/widget/AnchoredPopupWindow$LayoutObserver;)V

    iget-object p2, p0, Lorg/chromium/ui/DropdownPopupWindowImpl;->mAnchoredPopupWindow:Lorg/chromium/ui/widget/AnchoredPopupWindow;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lorg/chromium/ui/R$dimen;->dropdown_elevation:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->setElevation(F)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iget-object p2, p0, Lorg/chromium/ui/DropdownPopupWindowImpl;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    iget p3, p1, Landroid/graphics/Rect;->top:I

    const/4 v0, 0x0

    invoke-virtual {v8, v0, p2, v0, p3}, Lorg/chromium/ui/widget/ViewRectProvider;->setInsetPx(IIII)V

    iget p2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, p1

    iput p2, p0, Lorg/chromium/ui/DropdownPopupWindowImpl;->mHorizontalPadding:I

    iget-object p1, p0, Lorg/chromium/ui/DropdownPopupWindowImpl;->mAnchoredPopupWindow:Lorg/chromium/ui/widget/AnchoredPopupWindow;

    invoke-virtual {p1, v9}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->setPreferredHorizontalOrientation(I)V

    iget-object p1, p0, Lorg/chromium/ui/DropdownPopupWindowImpl;->mAnchoredPopupWindow:Lorg/chromium/ui/widget/AnchoredPopupWindow;

    invoke-virtual {p1, v9}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->setUpdateOrientationOnChange(Z)V

    iget-object p0, p0, Lorg/chromium/ui/DropdownPopupWindowImpl;->mAnchoredPopupWindow:Lorg/chromium/ui/widget/AnchoredPopupWindow;

    invoke-virtual {p0, v9}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->setOutsideTouchable(Z)V

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/ui/DropdownPopupWindowImpl;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/DropdownPopupWindowImpl;->mAnchorView:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic b(Lorg/chromium/ui/DropdownPopupWindowImpl;)Lorg/chromium/ui/widget/AnchoredPopupWindow;
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/DropdownPopupWindowImpl;->mAnchoredPopupWindow:Lorg/chromium/ui/widget/AnchoredPopupWindow;

    return-object p0
.end method

.method public static bridge synthetic c(Lorg/chromium/ui/DropdownPopupWindowImpl;)Landroid/view/View$OnLayoutChangeListener;
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/DropdownPopupWindowImpl;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    return-object p0
.end method

.method private measureContentWidth()I
    .locals 1

    iget-object p0, p0, Lorg/chromium/ui/DropdownPopupWindowImpl;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/chromium/ui/UiUtils;->computeListAdapterContentDimensions(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;)[I

    move-result-object p0

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method


# virtual methods
.method public disableHideOnOutsideTap()V
    .locals 1

    iget-object p0, p0, Lorg/chromium/ui/DropdownPopupWindowImpl;->mAnchoredPopupWindow:Lorg/chromium/ui/widget/AnchoredPopupWindow;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->setDismissOnTouchInteraction(Z)V

    return-void
.end method

.method public dismiss()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/DropdownPopupWindowImpl;->mAnchoredPopupWindow:Lorg/chromium/ui/widget/AnchoredPopupWindow;

    invoke-virtual {p0}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->dismiss()V

    return-void
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/DropdownPopupWindowImpl;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method public isShowing()Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/DropdownPopupWindowImpl;->mAnchoredPopupWindow:Lorg/chromium/ui/widget/AnchoredPopupWindow;

    invoke-virtual {p0}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->isShowing()Z

    move-result p0

    return p0
.end method

.method public onPreLayoutChange(ZIIIILandroid/graphics/Rect;)V
    .locals 0

    iget-object p1, p0, Lorg/chromium/ui/DropdownPopupWindowImpl;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lorg/chromium/ui/DropdownPopupWindowImpl;->mAnchoredPopupWindow:Lorg/chromium/ui/widget/AnchoredPopupWindow;

    iget-object p0, p0, Lorg/chromium/ui/DropdownPopupWindowImpl;->mContext:Landroid/content/Context;

    sget p2, Lorg/chromium/ui/R$drawable;->menu_bg_baseline:I

    invoke-static {p2, p0}, Ll5/a;->a(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public postShow()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/DropdownPopupWindowImpl;->mAnchoredPopupWindow:Lorg/chromium/ui/widget/AnchoredPopupWindow;

    invoke-virtual {p0}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->show()V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    iput-object p1, p0, Lorg/chromium/ui/DropdownPopupWindowImpl;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v0, p0, Lorg/chromium/ui/DropdownPopupWindowImpl;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p0, p0, Lorg/chromium/ui/DropdownPopupWindowImpl;->mAnchoredPopupWindow:Lorg/chromium/ui/widget/AnchoredPopupWindow;

    invoke-virtual {p0}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->onRectChanged()V

    return-void
.end method

.method public setContentDescriptionForAccessibility(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/ui/DropdownPopupWindowImpl;->mDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method public setInitialSelection(I)V
    .locals 0

    iput p1, p0, Lorg/chromium/ui/DropdownPopupWindowImpl;->mInitialSelection:I

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/DropdownPopupWindowImpl;->mAnchoredPopupWindow:Lorg/chromium/ui/widget/AnchoredPopupWindow;

    invoke-virtual {p0, p1}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->addOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/DropdownPopupWindowImpl;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public setRtl(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/ui/DropdownPopupWindowImpl;->mRtl:Z

    return-void
.end method

.method public show()V
    .locals 6

    iget-object v0, p0, Lorg/chromium/ui/DropdownPopupWindowImpl;->mAnchoredPopupWindow:Lorg/chromium/ui/widget/AnchoredPopupWindow;

    invoke-virtual {v0}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->isShowing()Z

    move-result v0

    iget-object v1, p0, Lorg/chromium/ui/DropdownPopupWindowImpl;->mAnchoredPopupWindow:Lorg/chromium/ui/widget/AnchoredPopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->setVerticalOverlapAnchor(Z)V

    iget-object v1, p0, Lorg/chromium/ui/DropdownPopupWindowImpl;->mAnchoredPopupWindow:Lorg/chromium/ui/widget/AnchoredPopupWindow;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->setHorizontalOverlapAnchor(Z)V

    iget-object v1, p0, Lorg/chromium/ui/DropdownPopupWindowImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-direct {p0}, Lorg/chromium/ui/DropdownPopupWindowImpl;->measureContentWidth()I

    move-result v3

    iget v4, p0, Lorg/chromium/ui/DropdownPopupWindowImpl;->mHorizontalPadding:I

    add-int v5, v3, v4

    if-ge v1, v5, :cond_0

    iget-object v3, p0, Lorg/chromium/ui/DropdownPopupWindowImpl;->mAnchoredPopupWindow:Lorg/chromium/ui/widget/AnchoredPopupWindow;

    sub-int/2addr v1, v4

    invoke-virtual {v3, v1}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->setMaxWidth(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/chromium/ui/DropdownPopupWindowImpl;->mAnchorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-ge v1, v3, :cond_1

    iget-object v1, p0, Lorg/chromium/ui/DropdownPopupWindowImpl;->mAnchoredPopupWindow:Lorg/chromium/ui/widget/AnchoredPopupWindow;

    iget v4, p0, Lorg/chromium/ui/DropdownPopupWindowImpl;->mHorizontalPadding:I

    add-int/2addr v3, v4

    invoke-virtual {v1, v3}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->setMaxWidth(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/chromium/ui/DropdownPopupWindowImpl;->mAnchoredPopupWindow:Lorg/chromium/ui/widget/AnchoredPopupWindow;

    iget-object v3, p0, Lorg/chromium/ui/DropdownPopupWindowImpl;->mAnchorView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, p0, Lorg/chromium/ui/DropdownPopupWindowImpl;->mHorizontalPadding:I

    add-int/2addr v3, v4

    invoke-virtual {v1, v3}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->setMaxWidth(I)V

    :goto_0
    iget-object v1, p0, Lorg/chromium/ui/DropdownPopupWindowImpl;->mAnchoredPopupWindow:Lorg/chromium/ui/widget/AnchoredPopupWindow;

    invoke-virtual {v1}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->show()V

    iget-object v1, p0, Lorg/chromium/ui/DropdownPopupWindowImpl;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    iget-boolean v1, p0, Lorg/chromium/ui/DropdownPopupWindowImpl;->mRtl:Z

    iget-object v2, p0, Lorg/chromium/ui/DropdownPopupWindowImpl;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutDirection(I)V

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/ui/DropdownPopupWindowImpl;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lorg/chromium/ui/DropdownPopupWindowImpl;->mDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/chromium/ui/DropdownPopupWindowImpl;->mListView:Landroid/widget/ListView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_2
    iget v0, p0, Lorg/chromium/ui/DropdownPopupWindowImpl;->mInitialSelection:I

    if-ltz v0, :cond_3

    iget-object v1, p0, Lorg/chromium/ui/DropdownPopupWindowImpl;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/ui/DropdownPopupWindowImpl;->mInitialSelection:I

    :cond_3
    return-void
.end method
