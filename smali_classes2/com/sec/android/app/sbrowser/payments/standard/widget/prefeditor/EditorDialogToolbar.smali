.class public Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialogToolbar;
.super Landroidx/appcompat/widget/Toolbar;
.source "SourceFile"


# instance fields
.field private mCancelShapedTextMenuItem:Lcom/sec/android/app/sbrowser/common/widget/ShapedTextMenuItem;

.field private mIsSaveMenuEnabled:Z

.field private mMenuView:Landroid/view/View;

.field private mSaveShapedTextMenuItem:Lcom/sec/android/app/sbrowser/common/widget/ShapedTextMenuItem;

.field private mShowMenuItem:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialogToolbar;->mShowMenuItem:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialogToolbar;->mIsSaveMenuEnabled:Z

    return-void
.end method

.method private setShowMenuItemThenUpdate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialogToolbar;->mShowMenuItem:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialogToolbar;->updateMenu()V

    return-void
.end method

.method private updateMenu()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialogToolbar;->mMenuView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialogToolbar;->mShowMenuItem:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialogToolbar;->mSaveShapedTextMenuItem:Lcom/sec/android/app/sbrowser/common/widget/ShapedTextMenuItem;

    if-eqz v0, :cond_2

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialogToolbar;->mIsSaveMenuEnabled:Z

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/widget/ShapedTextMenuItem;->setEnabled(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public initialize(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1501d3

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitleTextAppearance(Landroid/content/Context;I)V

    const p1, 0x7f0b0d8e

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialogToolbar;->mMenuView:Landroid/view/View;

    const v0, 0x7f0b0202

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/widget/ShapedTextMenuItem;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialogToolbar;->mCancelShapedTextMenuItem:Lcom/sec/android/app/sbrowser/common/widget/ShapedTextMenuItem;

    const v0, 0x7f1402c1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/widget/ShapedTextMenuItem;->setText(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialogToolbar;->mMenuView:Landroid/view/View;

    const v0, 0x7f0b0a26

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/widget/ShapedTextMenuItem;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialogToolbar;->mSaveShapedTextMenuItem:Lcom/sec/android/app/sbrowser/common/widget/ShapedTextMenuItem;

    const v0, 0x7f140dbb

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/widget/ShapedTextMenuItem;->setText(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialogToolbar;->setShowMenuItemThenUpdate(Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070f2c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialogToolbar;->setShowMenuItemThenUpdate(Z)V

    return-void
.end method

.method public setCancelOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialogToolbar;->mCancelShapedTextMenuItem:Lcom/sec/android/app/sbrowser/common/widget/ShapedTextMenuItem;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setEnableSaveMenuItemThenUpdate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialogToolbar;->mIsSaveMenuEnabled:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialogToolbar;->updateMenu()V

    return-void
.end method

.method public setSaveOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialogToolbar;->mSaveShapedTextMenuItem:Lcom/sec/android/app/sbrowser/common/widget/ShapedTextMenuItem;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
