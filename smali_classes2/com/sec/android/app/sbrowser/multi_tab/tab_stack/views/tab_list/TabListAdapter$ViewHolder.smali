.class public Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/h1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field final mCheckBox:Lcom/sec/android/app/sbrowser/common/widget/ListItemCheckBox;

.field final mCloseBtn:Landroid/widget/ImageView;

.field final mCurrentTabOutline:Landroid/view/View;

.field final mGroupIcon:Landroid/widget/TextView;

.field mGroupInfoV2:Landroid/view/View;

.field mGroupThumbnail:Landroid/view/View;

.field mGroupThumbnailV2:Landroid/view/View;

.field final mGroupTitle:Landroid/widget/TextView;

.field final mLockIcon:Landroid/widget/ImageView;

.field mParentView:Landroid/view/View;

.field final mReorderIcon:Landroid/widget/ImageView;

.field mRootViewGroup:Landroid/view/ViewGroup;

.field final mSelectionDim:Landroid/view/View;

.field final mTabIcon:Landroid/widget/ImageView;

.field mTabId:I

.field final mThumbnail:Landroid/widget/ImageView;

.field mThumbnailBg:Landroid/view/View;

.field mThumbnailBgPad:Landroid/view/View;

.field final mThumbnailDim:Landroid/view/View;

.field final mThumbnailPad:Landroid/view/View;

.field final mThumbnailStroke:Landroid/view/View;

.field final mTitle:Landroid/widget/TextView;

.field mTitleLayout:Landroid/view/View;

.field final mUrl:Landroid/widget/TextView;

.field mUrlLayout:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/h1;-><init>(Landroid/view/View;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;->mTabId:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;->mParentView:Landroid/view/View;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;->mRootViewGroup:Landroid/view/ViewGroup;

    const p2, 0x7f0b07ac

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/common/widget/ListItemCheckBox;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;->mCheckBox:Lcom/sec/android/app/sbrowser/common/widget/ListItemCheckBox;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;->mParentView:Landroid/view/View;

    const v0, 0x7f0b0afa

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;->mSelectionDim:Landroid/view/View;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;->mParentView:Landroid/view/View;

    const v0, 0x7f0b0cba

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;->mParentView:Landroid/view/View;

    const v0, 0x7f0b0cb4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;->mCloseBtn:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;->mParentView:Landroid/view/View;

    const v0, 0x7f0b0cb5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;->mLockIcon:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;->mParentView:Landroid/view/View;

    const v1, 0x7f0b0cb9

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;->mThumbnail:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;->mParentView:Landroid/view/View;

    const v1, 0x7f0b0cb6

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;->mThumbnailStroke:Landroid/view/View;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;->mParentView:Landroid/view/View;

    const v2, 0x7f0b0cb8

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;->mThumbnailDim:Landroid/view/View;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;->mParentView:Landroid/view/View;

    const v2, 0x7f0b0cb7

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;->mThumbnailPad:Landroid/view/View;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;->mParentView:Landroid/view/View;

    const v3, 0x7f0b0cbc

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;->mUrl:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;->mParentView:Landroid/view/View;

    const v4, 0x7f0b0cb1

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;->mGroupIcon:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;->mParentView:Landroid/view/View;

    const v4, 0x7f0b0cb3

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;->mGroupTitle:Landroid/widget/TextView;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isTabManagerNewGuiEnabled()Z

    move-result p2

    const v4, 0x7f0b0561

    if-eqz p2, :cond_0

    const p2, 0x7f0b07ab

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;->mTabIcon:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;->mParentView:Landroid/view/View;

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;->mGroupThumbnail:Landroid/view/View;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;->mTabIcon:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;->mParentView:Landroid/view/View;

    const v0, 0x7f0b0560

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;->mGroupThumbnail:Landroid/view/View;

    :goto_0
    const p2, 0x7f0b09ec

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;->mReorderIcon:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;->mParentView:Landroid/view/View;

    const v0, 0x7f0b0387

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;->mCurrentTabOutline:Landroid/view/View;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isTabManagerNewGuiEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    const p2, 0x7f0b0cbb

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;->mTitleLayout:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;->mThumbnailBg:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;->mThumbnailBgPad:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;->mGroupThumbnailV2:Landroid/view/View;

    const p2, 0x7f0b0cb2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;->mGroupInfoV2:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;->mUrlLayout:Landroid/view/View;

    :cond_1
    return-void
.end method
