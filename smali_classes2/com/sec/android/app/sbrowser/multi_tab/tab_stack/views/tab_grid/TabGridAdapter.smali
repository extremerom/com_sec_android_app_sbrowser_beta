.class public Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;
.super Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static mVerticalPadding:I

.field private static sBasicCheckBoxColor:I

.field private static sCheckboxTintColor:I

.field private static sGridItemDimAlpha:F

.field private static sGridItemStrokeWidth:I

.field private static sItemThumbnailHeight:I

.field private static sListItemBgSecretColor:I

.field private static sListItemTextColor:I

.field private static sMultiTabListItemHeight:I

.field private static sUnlockTabString:Ljava/lang/String;


# instance fields
.field private mCurrentTabThumbnailView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;Z)V
    .locals 0

    invoke-direct {p0, p1, p3, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;-><init>(Landroid/content/Context;ZLcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->prepareResources()V

    return-void
.end method

.method public static synthetic access$000(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->isSearchMode()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mFilter:Ljava/lang/String;

    return-object p0
.end method

.method private bindView(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;)V
    .locals 1

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getTabId()I

    move-result v0

    iput v0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mTabId:I

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->updateCheckbox(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;)V

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->updateCloseAndLockButton(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;)V

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->updateDimLayer(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;)V

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->updateReorderVisibility(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;)V

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->updateThemeColor(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;)V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->getTitle(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->updateTitle(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->updateButtonContentDescription(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->dimItem(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;)V

    return-void
.end method

.method private clearTextHighlight(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/h1;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;

    const-string p2, ""

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->setHighlightSearchResult(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->lambda$updateCloseBtnBgWithDelay$6(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;)V

    return-void
.end method

.method private dimItem(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;->getModeType()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isSelectable(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;)Z

    move-result p0

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mParentView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    sget p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->sGridItemDimAlpha:F

    :goto_0
    iget-object v0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mThumbnail:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isGroupItem()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mGroupIcon:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mGroupThumbnail:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public static synthetic e(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->lambda$setListenerOnViewHolder$4(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private enableDimLayer(Landroid/view/View;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;Z)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0b07a4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getTabId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mTabLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getCurrentTabId()I

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    invoke-direct {p0, p2, p3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->getDimLayerBackground(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;Z)Landroid/graphics/drawable/LayerDrawable;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->isDarkMode()Z

    move-result p2

    if-eqz p2, :cond_4

    if-eqz p3, :cond_3

    const p2, 0x7f08046e

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isTabManagerNewGuiEnabled()Z

    move-result p2

    if-eqz p2, :cond_6

    const p2, 0x7f08046f

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_3
    const p2, 0x7f080472

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isTabManagerNewGuiEnabled()Z

    move-result p2

    if-eqz p2, :cond_6

    const p2, 0x7f080473

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_5
    const/4 p2, 0x4

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    :goto_0
    const p2, 0x7f0b0ca4

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0b0ca3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b07a3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-direct {p0, p2, v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->updateLockIconDim(Landroid/view/View;Landroid/view/View;Landroid/widget/CheckBox;)V

    invoke-direct {p0, p1, p3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->updateReorderButtonColor(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->lambda$setListenerOnViewHolder$1(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->lambda$setListenerOnViewHolder$3(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private getDimLayerBackground(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;Z)Landroid/graphics/drawable/LayerDrawable;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_0

    const v1, 0x7f08021f

    goto :goto_0

    :cond_0
    const v1, 0x7f08021d

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isTabManagerNewGuiEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_1

    const p2, 0x7f080220

    goto :goto_1

    :cond_1
    const p2, 0x7f08021e

    :goto_1
    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    :cond_2
    if-eqz v0, :cond_3

    const p0, 0x7f0b0bf2

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    sget p2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->sGridItemStrokeWidth:I

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getBackgroundColor()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_3
    return-object v0
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->lambda$onBindViewHolder$0(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->lambda$setListenerOnViewHolder$5(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->lambda$setListenerOnViewHolder$2(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->setGroupThumbnail(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;)V

    return-void
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->setHighlightSearchResult(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mParentView:Landroid/view/View;

    iget p1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mTabId:I

    invoke-interface {p0, p2, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;->onItemClick(Landroid/view/View;I)V

    return-void
.end method

.method private synthetic lambda$setListenerOnViewHolder$1(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->updateCloseBtnBgWithDelay(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$setListenerOnViewHolder$2(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;Landroid/view/View;)Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f0b07a9

    if-ne v0, v2, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

    invoke-interface {p0, p2, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;->onItemLongClick(Landroid/view/View;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;)Z

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method private synthetic lambda$setListenerOnViewHolder$3(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;->onDragStart(Landroidx/recyclerview/widget/h1;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_2

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->highlightOnReorder(Landroidx/recyclerview/widget/h1;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;->onDragEnd()V

    :cond_2
    :goto_0
    return v0
.end method

.method private static synthetic lambda$setListenerOnViewHolder$4(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$setListenerOnViewHolder$5(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->isNormalMode()Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getTabId()I

    move-result v0

    invoke-interface {p2, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;->onTabUnlocked(I)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->setLocked(Z)V

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mIsSecretMode:Z

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabLoggingHelper;->getScreenID(Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "4052"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private lambda$updateCloseBtnBgWithDelay$6(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;)V
    .locals 1

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mCloseBtnContainer:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_0

    const v0, 0x7f080469

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->updateCloseAndLockButton(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;)V

    return-void
.end method

.method public static bridge synthetic n()I
    .locals 1

    sget v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->sCheckboxTintColor:I

    return v0
.end method

.method public static bridge synthetic o()I
    .locals 1

    sget v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->sItemThumbnailHeight:I

    return v0
.end method

.method private prepareResources()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070acc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->sItemThumbnailHeight:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070ab5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->sMultiTabListItemHeight:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isTabManagerNewGuiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f070ab0

    goto :goto_0

    :cond_0
    const v1, 0x7f070ab1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->sGridItemStrokeWidth:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f060cfb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->sCheckboxTintColor:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f070ab2

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/TypedValueUtils;->getFloat(Landroid/content/Context;I)F

    move-result v0

    sput v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->sGridItemDimAlpha:F

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f0607ee

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->sListItemBgSecretColor:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f0607f3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->sListItemTextColor:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f0600f4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->sBasicCheckBoxColor:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f141099

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->sUnlockTabString:Ljava/lang/String;

    return-void
.end method

.method private setCloseBtnBgBlurrEffect(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070aac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v5, v0, 0x2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mCloseBtn:Landroid/widget/ImageView;

    const/16 v4, 0x8

    const v6, 0x7f0607b7

    const/4 v3, 0x1

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBlurEffect(Landroid/content/Context;Landroid/view/View;ZIII)V

    return-void
.end method

.method private setCloseBtnContainerVisibility(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;I)V
    .locals 0

    iget-object p0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mCloseBtnContainer:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private setFavicon(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;)V
    .locals 1

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isGroupItem()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mFavicon:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mTabLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getTabId()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getFavicon(I)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mFavicon:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method private setGroupIcon(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;)V
    .locals 3

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isGroupItem()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->getMemberCount(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mGroupIcon:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "%d"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mGroupIcon:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getGroupColorId()I

    move-result p2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColor;->getGroupColor(I)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mGroupIcon:Landroid/widget/TextView;

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_1
    iget-object p0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mGroupIcon:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private setGroupThumbnail(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;)V
    .locals 9

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isGroupItem()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object p0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mThumbnail:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mGroupThumbnail:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mThumbnail:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mGroupThumbnail:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getTitle()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->getGroupMembers(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    move v3, v2

    :goto_1
    const/4 v4, 0x4

    if-ge v3, v4, :cond_5

    iget-object v5, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mGroupThumbnail:Landroid/view/View;

    invoke-static {v5, v3}, Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants;->getGroupMemberThumbnail(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    if-lt v3, v0, :cond_2

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mTabLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getTabId()I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getTabThumbnailFromCache(IZ)Landroid/graphics/Bitmap;

    move-result-object v6

    const v7, 0x7f0b0564

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/RoundedImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabUtil;->setGroupFavicon(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getTab()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    move-result-object v4

    iget v4, v4, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->bgColor:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants;->getDefaultGroupStrokeColor()I

    move-result v4

    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6, v5, v4}, Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants;->setGroupItemStrokeColor(Landroid/content/Context;Landroid/view/View;I)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    iget-object p0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mGroupThumbnail:Landroid/view/View;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants;->getGroupMemberThumbnailMore(Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    if-le v0, v4, :cond_6

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method private setHighlightSearchResult(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mIsSecretMode:Z

    invoke-static {v0, p1, p2, p0}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabUtil;->setTextHighlight(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setItemThumbnailHeight(I)V
    .locals 1

    sget v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->sMultiTabListItemHeight:I

    sub-int v0, p0, v0

    sput v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->sItemThumbnailHeight:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isTabManagerNewGuiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sput p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->sItemThumbnailHeight:I

    :cond_0
    return-void
.end method

.method public static setItemVerticalPadding(I)V
    .locals 0

    sput p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->mVerticalPadding:I

    return-void
.end method

.method private setListenerOnViewHolder(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mParentView:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/b;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mParentView:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/c;

    invoke-direct {v1, p0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/c;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mReorderIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/b;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/b;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mCloseBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/main_view/b;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/common/main_view/b;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$1;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;)V

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mCloseBtn:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/a;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;Ljava/lang/Object;I)V

    iget-object p0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mLockIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setTabCallbacks(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;ZLcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;)V
    .locals 7

    new-instance v6, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$2;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$2;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;ZLcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;)V

    invoke-virtual {p4, v6}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->setCallbacks(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab$TabCallbacks;)V

    return-void
.end method

.method private updateButtonContentDescription(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f14102e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mReorderIcon:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mReorderIcon:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f14101a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mCloseBtn:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mCloseBtn:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateCheckbox(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;)V
    .locals 3

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isChecked()Z

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    const/4 p2, 0x2

    new-array v0, p2, [I

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->getWindowHeight(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    aget v0, v0, v2

    if-ltz v0, :cond_0

    if-le v0, v1, :cond_1

    :cond_0
    iget-object v0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    :cond_1
    new-array p2, p2, [I

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    const v1, 0x7f080542

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    sget v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->sBasicCheckBoxColor:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    const/4 v0, 0x0

    aget v1, p2, v0

    if-nez v1, :cond_4

    aget p2, p2, v2

    if-nez p2, :cond_4

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->isSelectMode()Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mDummyLayout:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->isSelectMode()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method private updateCloseAndLockButton(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;->isMoveMode()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mLockIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mCloseBtn:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->setCloseBtnContainerVisibility(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->isNormalMode()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isLocked()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mLockIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mLockIcon:Landroid/widget/ImageView;

    sget-object v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->sUnlockTabString:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mCloseBtn:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->setCloseBtnContainerVisibility(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;I)V

    iget-object p0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mLockIcon:Landroid/widget/ImageView;

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object p2, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mLockIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mLockIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mCloseBtn:Landroid/widget/ImageView;

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0, p1, v3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->setCloseBtnContainerVisibility(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mCloseBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->setCloseBtnContainerVisibility(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;I)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isLocked()Z

    move-result p0

    if-eqz p0, :cond_3

    iget-object p0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mLockIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mLockIcon:Landroid/widget/ImageView;

    sget-object p2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->sUnlockTabString:Ljava/lang/String;

    invoke-virtual {p0, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mLockIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    iget-object p0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mLockIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mLockIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mLockIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    iget-object p1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mLockIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {p0, v2}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateCloseBtnBgWithDelay(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;)V
    .locals 2

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mCloseBtnContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mCloseBtnContainer:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/d;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/d;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;)V

    const-wide/16 p0, 0x1f4

    invoke-virtual {v0, v1, p0, p1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private updateDimLayer(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;)V
    .locals 2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getTabId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mTabLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getCurrentTabId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->isSelectMode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->updateDimLayerForSelectMode(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;Z)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->updateDimLayerForNonSelectMode(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;Z)V

    :goto_1
    iget-object p2, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mLockIconDim:Landroid/view/View;

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mLockIcon:Landroid/widget/ImageView;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-direct {p0, p2, v0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->updateLockIconDim(Landroid/view/View;Landroid/view/View;Landroid/widget/CheckBox;)V

    return-void
.end method

.method private updateDimLayerForNonSelectMode(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-direct {p0, p2, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->getDimLayerBackground(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;Z)Landroid/graphics/drawable/LayerDrawable;

    move-result-object p0

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mDimLayer:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mDimLayer:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->isDarkMode()Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mDimLayer:Landroid/view/View;

    const p2, 0x7f080472

    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isTabManagerNewGuiEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mDimLayer:Landroid/view/View;

    const p2, 0x7f080473

    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    iget-object p0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mDimLayer:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object p0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mDimLayer:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateDimLayerForSelectMode(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;Z)V
    .locals 6

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isChecked()Z

    move-result v0

    const v1, 0x7f08046d

    const v2, 0x7f08046c

    const v3, 0x7f080473

    const v4, 0x7f080472

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    invoke-direct {p0, p2, p3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->getDimLayerBackground(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;Z)Landroid/graphics/drawable/LayerDrawable;

    move-result-object p0

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mDimLayer:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mDimLayer:Landroid/view/View;

    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->isDarkMode()Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mDimLayer:Landroid/view/View;

    invoke-virtual {p0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isTabManagerNewGuiEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mDimLayer:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mDimLayer:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isTabManagerNewGuiEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mDimLayer:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_2
    :goto_0
    iget-object p0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mDimLayer:Landroid/view/View;

    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_4

    invoke-direct {p0, p2, v5}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->getDimLayerBackground(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;Z)Landroid/graphics/drawable/LayerDrawable;

    move-result-object p0

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mDimLayer:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mDimLayer:Landroid/view/View;

    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->isDarkMode()Z

    move-result p0

    if-eqz p0, :cond_6

    iget-object p0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mDimLayer:Landroid/view/View;

    invoke-virtual {p0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isTabManagerNewGuiEnabled()Z

    move-result p0

    if-eqz p0, :cond_5

    iget-object p0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mDimLayer:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_5
    iget-object p0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mDimLayer:Landroid/view/View;

    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_6
    iget-object p0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mDimLayer:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isTabManagerNewGuiEnabled()Z

    move-result p0

    if-eqz p0, :cond_7

    iget-object p0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mDimLayer:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_7
    iget-object p0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mDimLayer:Landroid/view/View;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private updateLockIconDim(Landroid/view/View;Landroid/view/View;Landroid/widget/CheckBox;)V
    .locals 1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->isSelectMode()Z

    move-result p0

    if-eqz p0, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_2
    return-void
.end method

.method private updateReorderButtonColor(Landroid/view/View;Z)V
    .locals 2

    const v0, 0x7f0b0ca8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b0ca5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f0607f3

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    if-eq v0, p0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p0, -0x1000000

    :cond_1
    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method

.method private updateReorderVisibility(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;)V
    .locals 3

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mFilter:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;->isEditModeFromSearch()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move p2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p2, v0

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;->getModeType()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->isEditMode()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->getFilteredTabList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, v0, :cond_2

    goto :goto_2

    :cond_2
    const/16 v1, 0x8

    :goto_2
    iget-object p0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mReorderIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mReorderIconSpace:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private updateThemeColor(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;)V
    .locals 5

    sget v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->sListItemBgSecretColor:I

    sget v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->sListItemTextColor:I

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getTabId()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mTabLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getCurrentTabId()I

    move-result v3

    const v4, 0x7f080469

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mIsSecretMode:Z

    if-nez v2, :cond_1

    :goto_0
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getBackgroundColor()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants;->getTextColorFromBg(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->isDarkMode()Z

    move-result v2

    if-eqz v2, :cond_1

    const v4, 0x7f08046a

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isTabManagerNewGuiEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f060959

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mCloseBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    const v4, 0x7f08046b

    goto :goto_1

    :cond_2
    iget-object v2, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mThemeColorLayer:Landroid/view/View;

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->setBackgroundColor(Landroid/view/View;I)V

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mCloseBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    :goto_1
    iget-object v0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mCloseBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mParentView:Landroid/view/View;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isChecked()Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->updateReorderButtonColor(Landroid/view/View;Z)V

    return-void
.end method

.method private updateTitle(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;Ljava/lang/String;)V
    .locals 5

    iget-object p0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    new-instance v0, Ld1/c;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextMetricsParams()Landroid/text/PrecomputedText$Params;

    move-result-object p0

    invoke-direct {v0, p0}, Ld1/c;-><init>(Landroid/text/PrecomputedText$Params;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    const-string p0, "PrecomputedText"

    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object p0, v0, Ld1/c;->e:Landroid/text/PrecomputedText$Params;

    if-eqz p0, :cond_0

    new-instance v1, Ld1/d;

    invoke-static {p2, p0}, Landroid/text/PrecomputedText;->create(Ljava/lang/CharSequence;Landroid/text/PrecomputedText$Params;)Landroid/text/PrecomputedText;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ld1/d;-><init>(Landroid/text/PrecomputedText;Ld1/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_4

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :cond_0
    :try_start_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_2

    const/16 v4, 0xa

    invoke-static {p2, v4, v3, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v3

    if-gez v3, :cond_1

    move v3, v1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    move v3, v2

    :goto_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    iget-object v1, v0, Ld1/c;->a:Landroid/text/TextPaint;

    const v3, 0x7fffffff

    invoke-static {p2, v2, p0, v1, v3}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    iget v1, v0, Ld1/c;->c:I

    invoke-virtual {p0, v1}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    iget v1, v0, Ld1/c;->d:I

    invoke-virtual {p0, v1}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    iget-object v1, v0, Ld1/c;->b:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {p0, v1}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    new-instance v1, Ld1/d;

    invoke-direct {v1, p2, v0}, Ld1/d;-><init>(Ljava/lang/String;Ld1/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_4
    :try_start_2
    iget-object p0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v0, v1, Ld1/d;->a:Landroid/text/Spannable;

    instance-of v1, v0, Landroid/text/PrecomputedText;

    if-eqz v1, :cond_4

    check-cast v0, Landroid/text/PrecomputedText;

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :catch_0
    move-exception p0

    const-string v0, "TabGridAdapter"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    return-void

    :goto_7
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method


# virtual methods
.method public checkItem(Landroid/view/View;IZ)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->getItem(I)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;->getModeType()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isSelectable(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->setChecked(Z)V

    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, -0x1

    :goto_0
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->setLastSelectedItem(I)V

    invoke-virtual {p0, p1, p3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->updateCheckBoxStatus(Landroid/view/View;Z)V

    invoke-direct {p0, p1, v0, p3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->enableDimLayer(Landroid/view/View;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public cleanUpViewHolder(Landroidx/recyclerview/widget/h1;)V
    .locals 1

    check-cast p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;

    iget-object p0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mThumbnail:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object p0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mRootViewGroup:Landroid/view/ViewGroup;

    if-eqz p0, :cond_1

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mParentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object p0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mParentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_2

    iget-object p0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mParentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mParentView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public clearAllTextHighlight(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->clearTextHighlight(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getBottomPaddingHeight()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getItemCount()I
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->getFilteredTabList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getSelectedCountDescription(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f140801

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f140655

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f12005f

    invoke-virtual {p0, v1, p1, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public getTabId(Landroidx/recyclerview/widget/h1;)I
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;

    iget p0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mTabId:I

    return p0
.end method

.method public highlightOnReorder(Landroidx/recyclerview/widget/h1;Z)V
    .locals 1

    check-cast p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->isDarkMode()Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mReorderDim:Landroid/view/View;

    const v0, 0x7f08046e

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isTabManagerNewGuiEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mReorderDim:Landroid/view/View;

    const v0, 0x7f08046f

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mReorderDim:Landroid/view/View;

    const v0, 0x7f08046c

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isTabManagerNewGuiEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mReorderDim:Landroid/view/View;

    const v0, 0x7f08046d

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    :goto_0
    iget-object p0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mReorderDim:Landroid/view/View;

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mReorderDim:Landroid/view/View;

    if-eqz p2, :cond_3

    const/high16 p1, 0x3f000000    # 0.5f

    goto :goto_2

    :cond_3
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 7
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->getItem(I)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mParentView:Landroid/view/View;

    new-instance v2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/a;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v4, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sget v5, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->mVerticalPadding:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->bindView(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;->getSpanCount()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getTab()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    move-result-object v1

    iget-object v4, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mThumbnail:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->isDarkMode()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->setDarkThemeEnabled(Z)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isGroupItem()Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v1, :cond_2

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->setTabCallbacks(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;ZLcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

    invoke-interface {v3, v1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;->onRequestTabData(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;Z)V

    iget v1, v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mId:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;->getCurrentTabId()I

    move-result v2

    if-ne v1, v2, :cond_5

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mThumbnail:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->mCurrentTabThumbnailView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;

    goto :goto_3

    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isGroupItem()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isRoot()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ""

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->getGroupMembers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x4

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_2
    if-ge v3, v4, :cond_5

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getTab()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-direct {p0, p1, v0, v2, v5}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->setTabCallbacks(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;ZLcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

    invoke-interface {v6, v5, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;->onRequestTabData(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;Z)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isTabManagerNewGuiEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->setFavicon(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->setCloseBtnBgBlurrEffect(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;)V

    :cond_6
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->setGroupIcon(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;)V

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->setGroupThumbnail(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mFilter:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->setHighlightSearchResult(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;Ljava/lang/String;)V

    :cond_7
    iget-object v1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mParentView:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->setOnDragListener(Landroid/view/View;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;)V

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->setListenerOnViewHolder(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;->getSpanCount()I

    move-result v1

    iget-object v2, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mParentView:Landroid/view/View;

    invoke-virtual {p0, v2, p2, v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->setTalkBackCustomAction(Landroid/view/View;III)V

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;->mReorderIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->setTalkBackCustomAction(Landroid/view/View;III)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isTabManagerNewGuiEnabled()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mContext:Landroid/content/Context;

    const p2, 0x7f0e0505

    invoke-static {p0, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mContext:Landroid/content/Context;

    const p2, 0x7f0e0504

    invoke-static {p0, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    :goto_0
    new-instance p2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;-><init>(ILandroid/view/View;Landroid/view/ViewGroup;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p2
.end method

.method public onDragEnter(Landroid/view/View;)V
    .locals 0

    const p0, 0x7f0b0470

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onDragExit(Landroid/view/View;)V
    .locals 0

    const p0, 0x7f0b0470

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateCheckBoxStatus(Landroid/view/View;Z)V
    .locals 1

    const v0, 0x7f0b07a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->getSelectedItemCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->getSelectedCountDescription(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_1

    const p2, 0x7f140e6f

    goto :goto_0

    :cond_1
    const p2, 0x7f14081f

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateCurrentTabThumbnail(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->mCurrentTabThumbnailView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "TabGridAdapter"

    const-string v1, "[updateCurrentTabThumbnail] setImageBitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->mCurrentTabThumbnailView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
