.class public Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUi;


# instance fields
.field protected mActionBar:Lm/b;

.field protected mActivity:Lm/n;

.field protected mBackButton:Landroid/view/View;

.field protected mDelegate:Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;

.field private final mGridEventListener:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$ImageGridEventListener;

.field protected mImageGridContainer:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

.field protected mIsAllItemLoaded:Z

.field protected mIsPreviewMode:Z

.field protected mListener:Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiListener;

.field protected mPreviewActionBar:Landroid/view/View;

.field protected mPreviewContainer:Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;

.field private final mPreviewEventListener:Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer$ImagePreviewEventListener;

.field protected mSelectActionBar:Landroid/view/View;

.field protected mSelectAllCheckBox:Landroid/widget/CheckBox;

.field protected mSelectAllLayout:Landroid/view/View;

.field protected mSelectAllTv:Landroid/widget/TextView;

.field protected mSelectItemCountText:Landroid/widget/TextView;

.field protected mSelectedItemCount:I

.field protected mToolbar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>(Lm/n;Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi$1;-><init>(Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mGridEventListener:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$ImageGridEventListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi$2;-><init>(Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mPreviewEventListener:Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer$ImagePreviewEventListener;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mActivity:Lm/n;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mDelegate:Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mListener:Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiListener;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->lambda$updateActionBarLayout$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->lambda$updateActionBarLayout$1(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->notifyItemLoadComplete()V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->lambda$updateActionBarLayout$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->lambda$updateActionBarLayout$3(Landroid/view/View;Z)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->onDragSelected(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;Z)V

    return-void
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->onItemChecked(Z)V

    return-void
.end method

.method private getCheckedText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mActivity:Lm/n;

    invoke-virtual {v0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f140289

    goto :goto_0

    :cond_0
    const p0, 0x7f14028a

    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getHintText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mActivity:Lm/n;

    invoke-virtual {v0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f14107f

    goto :goto_0

    :cond_0
    const p0, 0x7f14107d

    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSelectedText()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mSelectedItemCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mActivity:Lm/n;

    invoke-virtual {v0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140801

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mActivity:Lm/n;

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f140655

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mActivity:Lm/n;

    invoke-virtual {v0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mSelectedItemCount:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f12005f

    invoke-virtual {v0, v2, p0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->onItemExpand(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V

    return-void
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->onItemSelected(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V

    return-void
.end method

.method private isAllItemLoaded()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mDelegate:Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;->getScannedImageList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mDelegate:Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;->getScannedImageList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mDelegate:Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;->isAllItemLoaded()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private isAllItemSelected()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mDelegate:Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;->getScannedImageList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mDelegate:Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;->getScannedImageList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mSelectedItemCount:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mDelegate:Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;->getSelectableCount()I

    move-result v0

    iget p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mSelectedItemCount:I

    if-ne v0, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->onSaveButtonClicked()V

    return-void
.end method

.method private synthetic lambda$updateActionBarLayout$0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->onBackPressed()Z

    return-void
.end method

.method private synthetic lambda$updateActionBarLayout$1(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mBackButton:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateActionBarLayout$2(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->notifySelectAllClicked(Z)V

    return-void
.end method

.method private synthetic lambda$updateActionBarLayout$3(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method private notifyCheckCountChanged(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mImageGridContainer:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->isReadyToShow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->updateSelectAllText()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mImageGridContainer:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->isAllItemLoaded()Z

    move-result v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mSelectedItemCount:I

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->setDownloadButtonEnabled(ZZ)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->isAllItemSelected()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eq v1, v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    :cond_2
    return-void
.end method

.method private notifyItemLoadComplete()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mImageGridContainer:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->notifyDataSetChanged()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->notifySelectAllClicked(Z)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mIsPreviewMode:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mPreviewContainer:Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->updateCheckBoxState()V

    :cond_0
    return-void
.end method

.method private notifySelectAllClicked(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mImageGridContainer:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mDelegate:Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->notifySelectAllClicked(Z)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mDelegate:Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;->getSelectableCount()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mSelectedItemCount:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->notifyCheckCountChanged(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mSelectAllLayout:Landroid/view/View;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->getSelectedText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private onDragSelected(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->getState()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->setChecked(Z)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->onItemChecked(Z)V

    :cond_0
    return-void
.end method

.method private onItemChecked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mDelegate:Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;->getSelectedCount()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mSelectedItemCount:I

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mIsPreviewMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->notifyCheckCountChanged(Z)V

    :goto_0
    return-void
.end method

.method private onItemExpand(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mIsPreviewMode:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mPreviewContainer:Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->setCurrentImage(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->toggleCurrentMode(Z)V

    const-string p0, "226"

    const-string p1, "2264"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onItemSelected(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V
    .locals 2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->setChecked(Z)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->onItemChecked(Z)V

    return-void
.end method

.method private onSaveButtonClicked()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mListener:Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSaveButtonClicked() for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mSelectedItemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " images"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SaveAllImageBaseUi"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mListener:Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiListener;->onDownload()V

    return-void
.end method

.method private toggleCurrentMode(Z)V
    .locals 2

    const-string v0, "toggleCurrentMode - showPreview : "

    const-string v1, "SaveAllImageBaseUi"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mIsPreviewMode:Z

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mImageGridContainer:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mPreviewContainer:Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mPreviewContainer:Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mPreviewContainer:Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->updatePreview()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mPreviewContainer:Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mImageGridContainer:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mImageGridContainer:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mImageGridContainer:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->updateImageItemList()V

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->updateActionBarLayout()V

    return-void
.end method

.method private updateActionBarLayout()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mIsPreviewMode:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mPreviewActionBar:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mActivity:Lm/n;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0e0801

    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mPreviewActionBar:Landroid/view/View;

    const v1, 0x7f0b0a27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mBackButton:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/sbrowser/save_image/view/a;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/sec/android/app/sbrowser/save_image/view/a;-><init>(Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mActivity:Lm/n;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mBackButton:Landroid/view/View;

    invoke-virtual {v0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f14004d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setTooltip(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mBackButton:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mActivity:Lm/n;

    invoke-virtual {v1}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mPreviewActionBar:Landroid/view/View;

    const v1, 0x7f0b0a28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mActivity:Lm/n;

    const v3, 0x7f14021e

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    new-instance v1, Lcom/sec/android/app/sbrowser/save_image/view/b;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/sec/android/app/sbrowser/save_image/view/b;-><init>(Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mPreviewActionBar:Landroid/view/View;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mSelectActionBar:Landroid/view/View;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mActivity:Lm/n;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0e0805

    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mSelectActionBar:Landroid/view/View;

    const v1, 0x7f0b0a2b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mSelectAllLayout:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mSelectActionBar:Landroid/view/View;

    const v1, 0x7f0b0a2a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mSelectItemCountText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mSelectActionBar:Landroid/view/View;

    const v1, 0x7f0b0a29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mSelectActionBar:Landroid/view/View;

    const v1, 0x7f0b0a2c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mSelectAllTv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/sec/android/app/sbrowser/save_image/view/a;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3}, Lcom/sec/android/app/sbrowser/save_image/view/a;-><init>(Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->updateSelectAllBackground()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->updateSelectAllColor()V

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->updateItemLoadedState(Z)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    new-instance v1, Lcom/sec/android/app/sbrowser/save_image/view/b;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3}, Lcom/sec/android/app/sbrowser/save_image/view/b;-><init>(Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mSelectActionBar:Landroid/view/View;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->updateSelectAllText()V

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mActionBar:Lm/b;

    invoke-virtual {p0, v0}, Lm/b;->l(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v2, v2}, Landroidx/appcompat/widget/Toolbar;->setContentInsetsAbsolute(II)V

    return-void
.end method

.method private updateItemCountText()V
    .locals 4

    iget v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mSelectedItemCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mSelectItemCountText:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mActivity:Lm/n;

    const v1, 0x7f14021e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mActivity:Lm/n;

    invoke-virtual {v0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mSelectedItemCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f120001

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mSelectItemCountText:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private updateItemLoadedState(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mIsAllItemLoaded:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mIsAllItemLoaded:Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mSelectAllLayout:Landroid/view/View;

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    const/16 p1, 0x8

    :goto_1
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mSelectItemCountText:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mIsAllItemLoaded:Z

    invoke-static {p1, v2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setEnabledWithAlpha(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mSelectItemCountText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mIsAllItemLoaded:Z

    if-eqz v2, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mActivity:Lm/n;

    invoke-virtual {v2}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070ed2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mImageGridContainer:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    invoke-virtual {v2, v0, v0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->setDownloadButtonEnabled(ZZ)V

    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mSelectItemCountText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v1, :cond_3

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/download/b;

    const/16 v1, 0x12

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/download/b;-><init>(ILjava/lang/Object;)V

    const-wide/16 v1, 0x32

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

.method private updateLetterBoxColor()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mActivity:Lm/n;

    const v1, 0x7f060971

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mActivity:Lm/n;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setLetterBoxColor(Landroid/content/Context;I)V

    return-void
.end method

.method private updateNavigationBarColor()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mActivity:Lm/n;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_NIGHT:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setNavigationBarColor(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mActivity:Lm/n;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_DEFAULT:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setNavigationBarColor(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;)V

    :goto_0
    return-void
.end method

.method private updateSelectAllBackground()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isNightModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f08076c

    goto :goto_0

    :cond_0
    const v0, 0x7f08076b

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method private updateSelectAllColor()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mActivity:Lm/n;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mSelectItemCountText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mActivity:Lm/n;

    const v2, 0x7f060967

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mActivity:Lm/n;

    const v2, 0x7f060976

    invoke-static {v2, v1}, LV0/a;->c(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mSelectAllTv:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mActivity:Lm/n;

    const v1, 0x7f060221

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method private updateSelectAllDescription()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mSelectAllLayout:Landroid/view/View;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->getCheckedText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mActivity:Lm/n;

    invoke-virtual {v3}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f14105f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mActivity:Lm/n;

    invoke-virtual {v3}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f140b8f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->getHintText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateSelectAllText()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->updateItemCountText()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->updateSelectAllDescription()V

    return-void
.end method

.method private updateStatusBarColor()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mActivity:Lm/n;

    const v1, 0x7f060224

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mActivity:Lm/n;

    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setLightStatusBarTheme(Landroid/content/Context;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mActivity:Lm/n;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setStatusBarColor(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->getMetaState(Landroid/view/KeyEvent;)I

    move-result v1

    or-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mIsPreviewMode:Z

    const/16 v2, 0x3d

    const/16 v3, 0x16

    const/16 v4, 0x14

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mBackButton:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eq v0, v4, :cond_0

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mBackButton:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mPreviewContainer:Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_1
    return v5

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mPreviewContainer:Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_3
    const v1, -0x7fffffe3

    if-eq v0, v1, :cond_7

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mImageGridContainer:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->focusFromTop()Z

    move-result p0

    return p0

    :cond_5
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_6
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mImageGridContainer:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v5, :cond_8

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-direct {p0, v5}, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->notifySelectAllClicked(Z)V

    :cond_8
    return v5
.end method

.method public isLongPressDragging()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mIsPreviewMode:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mImageGridContainer:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->isLongPressDragging()Z

    move-result p0

    return p0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mImageGridContainer:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->notifyDataSetChanged()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->notifyCheckCountChanged(Z)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mIsPreviewMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->toggleCurrentMode(Z)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mImageGridContainer:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->updateLayout(Z)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mPreviewContainer:Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->updateLayout()V

    :cond_1
    return-void
.end method

.method public onCreate()V
    .locals 3

    const-string v0, "SaveAllImageBaseUi"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mActivity:Lm/n;

    const v1, 0x7f0e0803

    invoke-virtual {v0, v1}, Lm/n;->setContentView(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mActivity:Lm/n;

    const v1, 0x7f0b0a40

    invoke-virtual {v0, v1}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mActivity:Lm/n;

    invoke-virtual {v1, v0}, Lm/n;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mActivity:Lm/n;

    invoke-virtual {v0}, Lm/n;->getSupportActionBar()Lm/b;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mActionBar:Lm/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lm/b;->n(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mActionBar:Lm/b;

    invoke-virtual {v0, v1}, Lm/b;->r(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mActionBar:Lm/b;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lm/b;->p(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mActionBar:Lm/b;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lm/b;->s(F)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mActivity:Lm/n;

    const v2, 0x7f0b0a31

    invoke-virtual {v0, v2}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mImageGridContainer:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mGridEventListener:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$ImageGridEventListener;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->setListener(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$ImageGridEventListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mImageGridContainer:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mDelegate:Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->setDelegate(Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mActivity:Lm/n;

    const v2, 0x7f0b0a3c

    invoke-virtual {v0, v2}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mPreviewContainer:Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mPreviewEventListener:Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer$ImagePreviewEventListener;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->setListener(Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer$ImagePreviewEventListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mPreviewContainer:Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mDelegate:Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->setDelegate(Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->toggleCurrentMode(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->updateStatusBarColor()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->updateNavigationBarColor()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->updateLetterBoxColor()V

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "SaveAllImageBaseUi"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->isAllItemLoaded()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->updateItemLoadedState(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->updateStatusBarColor()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->updateNavigationBarColor()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->updateLetterBoxColor()V

    return-void
.end method

.method public onUpdate()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->isAllItemLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mImageGridContainer:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->stopLoadProgress()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mImageGridContainer:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->updateLoadProgress()V

    :goto_0
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->mIsAllItemLoaded:Z

    if-ne v1, v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->updateItemLoadedState(Z)V

    return-void
.end method
