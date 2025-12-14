.class public abstract Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mListView:Landroid/widget/ListView;

.field protected mMeasuredPopupHeight:I

.field protected mMeasuredPopupWidth:I

.field protected mPopupPositionX:I

.field protected mPopupPositionY:I

.field protected final mPopupView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/widget/ListView;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/ListView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mPopupView:Landroid/view/View;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mListView:Landroid/widget/ListView;

    const p3, 0x7f1501f3

    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    const/4 p2, 0x2

    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070344

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setElevation(F)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->setBlurEffect()V

    return-void
.end method


# virtual methods
.method public measurePopupHeight()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070346

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->getListViewHeight(Landroid/content/Context;Landroid/widget/Adapter;)I

    move-result p0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p0

    const-string p0, "[measurePopupHeight] measuredHeight : "

    const-string v1, "BaseContextMenuPopupWindow"

    invoke-static {v0, p0, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public measurePopupWidth()I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070345

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070347

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->getWindowWidth(Landroid/content/Context;)I

    move-result v2

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v2, v0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->getWidestChildWidth(Landroid/content/Context;Landroid/widget/Adapter;)I

    move-result p0

    if-ge p0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, p0

    :goto_0
    if-le v1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    const-string p0, "[measurePopupWidth] measuredWith : "

    const-string v0, "BaseContextMenuPopupWindow"

    invoke-static {v2, p0, v0}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public setBlurEffect()V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const v1, 0xf4260

    invoke-static {v1}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBlurEffect(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_1

    :cond_0
    :try_start_0
    new-instance v1, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;

    sget-object v2, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo;->BLUR_MODE_WINDOW:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;-><init>(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo;->BLUR_UI_MEDIUM_ULTRA_THICK_DARK:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo;->BLUR_UI_MEDIUM_ULTRA_THICK_LIGHT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;->setColorCurvePreset(I)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "sem_popup_menu_corner_radius"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    const v2, 0x7f070348

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;->setRadius(I)V

    int-to-float p0, p0

    invoke-virtual {v1, p0}, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;->setBackgroundCornerRadius(F)V

    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;->build()Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/sbrowser/spl/wrapper/MajoView;->semSetBlurInfo(Landroid/view/View;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "BaseContextMenuPopupWindow"

    const-string v0, "setBlurEffect, reflection failed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public updatePopupSize(II)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070346

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v2, -0x2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setHeight(I)V

    return-void
.end method
