.class public Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer$ImagePreviewEventListener;
    }
.end annotation


# instance fields
.field private final mCallBack:Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview$ImagePreviewCallBack;

.field private mCurrentPreviewItem:Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

.field private mDelegate:Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;

.field private mListener:Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer$ImagePreviewEventListener;

.field private mPreviewAdapter:Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewAdapter;

.field private mPreviewCheckBox:Landroid/widget/CheckBox;

.field private mPreviewPager:Landroidx/viewpager/widget/ViewPager;

.field private mPreviewProgress:Landroidx/appcompat/widget/SeslProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/google/firebase/messaging/z;

    const/16 p2, 0x1d

    invoke-direct {p1, p2, p0}, Lcom/google/firebase/messaging/z;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->mCallBack:Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview$ImagePreviewCallBack;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->lambda$updatePreview$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->onImageUpdated(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;)Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->mCurrentPreviewItem:Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->hideProgress()V

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->onPageSelected(I)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->showProgress()V

    return-void
.end method

.method private hideProgress()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->mPreviewProgress:Landroidx/appcompat/widget/SeslProgressBar;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$updatePreview$0(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->mListener:Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer$ImagePreviewEventListener;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->mCurrentPreviewItem:Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer$ImagePreviewEventListener;->onItemSelected(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->mPreviewCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f14067d

    goto :goto_0

    :cond_0
    const v0, 0x7f14067e

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->mPreviewCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private onImageUpdated(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->mCurrentPreviewItem:Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->getImageSrc()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->mCurrentPreviewItem:Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->getImageSrc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->getState()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->showProgress()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->hideProgress()V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->updateCheckBoxState()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->mPreviewCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->mCurrentPreviewItem:Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->mPreviewCheckBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->mCurrentPreviewItem:Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->mPreviewCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->mListener:Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer$ImagePreviewEventListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer$ImagePreviewEventListener;->onItemChecked()V

    :cond_3
    return-void
.end method

.method private onPageSelected(I)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->mPreviewAdapter:Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewAdapter;->getViewList()Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->mDelegate:Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;->getScannedImageList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->resetScale()V

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->isGif()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    if-ne v5, p1, :cond_0

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->startAnimation()V

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->resetAnimation()V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->mCurrentPreviewItem:Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    if-eqz v0, :cond_3

    if-eq v0, p1, :cond_3

    const-string v0, "226"

    const-string v1, "2265"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->setCurrentImage(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->onImageUpdated(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V

    return-void
.end method

.method private showProgress()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->mPreviewProgress:Landroidx/appcompat/widget/SeslProgressBar;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->getMetaState(Landroid/view/KeyEvent;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->mPreviewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->mCurrentPreviewItem:Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->getState()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->mPreviewCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->mListener:Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer$ImagePreviewEventListener;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->mCurrentPreviewItem:Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer$ImagePreviewEventListener;->onItemSelected(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V

    return v2

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->mPreviewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f0b0a3b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->mPreviewCheckBox:Landroid/widget/CheckBox;

    const v0, 0x7f0b0a3f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SeslProgressBar;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->mPreviewProgress:Landroidx/appcompat/widget/SeslProgressBar;

    const v0, 0x7f0b0a3e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->mPreviewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->mPreviewCheckBox:Landroid/widget/CheckBox;

    const v1, 0x7f080542

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->mPreviewPager:Landroidx/viewpager/widget/ViewPager;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->mPreviewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070eeb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setPageMargin(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->mPreviewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer$1;-><init>(Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Lc3/f;)V

    return-void
.end method

.method public setCurrentImage(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->mCurrentPreviewItem:Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    return-void
.end method

.method public setDelegate(Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->mDelegate:Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;

    return-void
.end method

.method public setListener(Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer$ImagePreviewEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->mListener:Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer$ImagePreviewEventListener;

    return-void
.end method

.method public updateCheckBoxState()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->mCurrentPreviewItem:Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->mDelegate:Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;->isAllItemLoaded()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->mCurrentPreviewItem:Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->getState()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->mPreviewCheckBox:Landroid/widget/CheckBox;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    move v2, v3

    :cond_2
    invoke-static {v4, v2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setEnabledWithAlpha(Landroid/view/View;Z)V

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->mPreviewCheckBox:Landroid/widget/CheckBox;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->mCurrentPreviewItem:Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->isChecked()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_3
    return-void
.end method

.method public updateLayout()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->updatePreview()V

    return-void
.end method

.method public updatePreview()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->mCurrentPreviewItem:Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->mPreviewCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/sec/android/app/sbrowser/save_image/d;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/save_image/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->mPreviewCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->mCurrentPreviewItem:Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->mPreviewCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->updateCheckBoxState()V

    new-instance v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->mDelegate:Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;->getScannedImageList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->mCallBack:Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview$ImagePreviewCallBack;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewAdapter;-><init>(Landroid/content/Context;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview$ImagePreviewCallBack;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->mPreviewAdapter:Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->mPreviewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Lc3/a;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->mPreviewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->mDelegate:Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;->getScannedImageList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->mCurrentPreviewItem:Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method
