.class public Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode$Delegate;
    }
.end annotation


# instance fields
.field private final mActionModeView:Landroid/widget/LinearLayout;

.field private final mActivity:Landroid/app/Activity;

.field private final mAllText:Landroid/widget/TextView;

.field private final mBottomBar:Landroid/view/View;

.field private final mBottomDeleteButton:Landroid/view/View;

.field private final mBottomDeleteButtonText:Landroid/widget/TextView;

.field private final mDelegate:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode$Delegate;

.field private final mItemSelected:Landroid/widget/TextView;

.field private final mSelAllCheckBox:Landroid/widget/CheckBox;

.field private final mSelAllLayout:Landroid/widget/FrameLayout;

.field private final mSlideDownAnim:Landroid/view/animation/Animation;

.field private final mSlideUpAnim:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode$Delegate;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "TabSyncActionMode"

    const-string v1, "[TabSyncActionMode]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mDelegate:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode$Delegate;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode$Delegate;->notifyDataSetChanged()V

    const v0, 0x7f141043

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode$Delegate;->setCollapsingToolbarTitle(Ljava/lang/String;)V

    const p2, 0x7f0b0cfc

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mActionModeView:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0b0086

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mSelAllLayout:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode$1;-><init>(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    const v0, 0x7f0b0aea

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mSelAllCheckBox:Landroid/widget/CheckBox;

    const v0, 0x7f0b0aeb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mAllText:Landroid/widget/TextView;

    const v0, 0x7f0b0655

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mItemSelected:Landroid/widget/TextView;

    const v0, 0x7f0b0cf8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_sync/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/tab_sync/a;-><init>(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isShowButtonShapeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b0cfd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0800b1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const v1, 0x7f060e10

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1402c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    const p2, 0x7f0b01bd

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mBottomBar:Landroid/view/View;

    const p2, 0x7f0b01c1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mBottomDeleteButton:Landroid/view/View;

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_sync/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/tab_sync/a;-><init>(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b01c2

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mBottomDeleteButtonText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    const p2, 0x7f010118

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mSlideUpAnim:Landroid/view/animation/Animation;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/InterpolatorUtil;->sineInOut90()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const p2, 0x7f01010d

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mSlideDownAnim:Landroid/view/animation/Animation;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/InterpolatorUtil;->sineInOut90()Landroid/view/animation/Interpolator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->setSelectAllListeners()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->updateSelectAllLayoutDirectly()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->lambda$setSelectAllListeners$3(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->lambda$setSelectAllListeners$2(Landroid/view/View;)V

    return-void
.end method

.method private delayedUpdateSelectAllLayout(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->updateItemsSelectedText(I)V

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->showDeleteButton(Z)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    const-string p1, "TabSyncActionMode"

    const-string v0, "[onClick] cancelButton"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mDelegate:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode$Delegate;->onCancelBtnClicked()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 1

    const-string p1, "TabSyncActionMode"

    const-string v0, "[onClick] mDeleteButton"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mDelegate:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode$Delegate;->deleteTabs()V

    return-void
.end method

.method private synthetic lambda$setSelectAllListeners$2(Landroid/view/View;)V
    .locals 2

    const-string p1, "TabSyncActionMode"

    const-string v0, "[mSelAllCheckBox:setOnClickListener]"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mDelegate:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode$Delegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode$Delegate;->getActivityStatus()Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ActivityStatus;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ActivityStatus;->FINISHED:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ActivityStatus;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mSelAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mDelegate:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode$Delegate;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode$Delegate;->selectAll(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->updateSelectAllLayout(Z)V

    if-eqz p1, :cond_1

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 p0, 0x1

    :goto_0
    const-string v0, "403"

    const-string v1, "4043"

    invoke-static {v0, v1, p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private synthetic lambda$setSelectAllListeners$3(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->setCheckBoxDescription()V

    return-void
.end method

.method private showDeleteButton(Z)V
    .locals 3

    const-string v0, "[showDeleteButton] show : "

    const-string v1, "TabSyncActionMode"

    invoke-static {v0, v1, p1}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mBottomBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mBottomBar:Landroid/view/View;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    if-nez v0, :cond_2

    if-eqz p1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mSelAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->updateDeleteButtonText(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->updateBottomButton()V

    :cond_3
    if-eq p1, v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mDelegate:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode$Delegate;->resetContentHeightWithDelay()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mBottomBar:Landroid/view/View;

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mSlideUpAnim:Landroid/view/animation/Animation;

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mSlideDownAnim:Landroid/view/animation/Animation;

    :goto_2
    invoke-virtual {v0, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_5
    return-void
.end method

.method private updateDeleteButtonText(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mActivity:Landroid/app/Activity;

    const v0, 0x7f140434

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mActivity:Landroid/app/Activity;

    const v0, 0x7f14004e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mBottomDeleteButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mBottomDeleteButton:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public destroyActionMode()V
    .locals 2

    const-string v0, "TabSyncActionMode"

    const-string v1, "[destroyActionMode]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mActionModeView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mSelAllCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mSelAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->showSelectAllCheckBoxAnimation(Z)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->showDeleteButton(Z)V

    return-void
.end method

.method public getBottomBarHeight()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mBottomBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mBottomBar:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getSelAllCheckBox()Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mSelAllCheckBox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method public isSelectAllChecked()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mSelAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    return p0
.end method

.method public refreshActionMode()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mAllText:Landroid/widget/TextView;

    const v1, 0x7f14103f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mDelegate:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode$Delegate;->getSelectedCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->updateItemsSelectedText(I)V

    return-void
.end method

.method public setCheckBoxDescription()V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mSelAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    const-string v2, ", "

    const v3, 0x7f14105f

    const-string v4, ",  "

    if-eqz v1, :cond_1

    const v1, 0x7f14107f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mSelAllLayout:Landroid/widget/FrameLayout;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f14067d

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const v1, 0x7f14107d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mSelAllLayout:Landroid/widget/FrameLayout;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f14067e

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setSelectAllListeners()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mSelAllCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/sec/android/app/sbrowser/tab_sync/a;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/tab_sync/a;-><init>(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mSelAllCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/sec/android/app/sbrowser/auth/password/a;

    const/4 v2, 0x6

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/auth/password/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public setTitleAlpha(F)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mItemSelected:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public showSelectAllCheckBoxAnimation(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mActivity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mSelAllCheckBox:Landroid/widget/CheckBox;

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->showBasicEditModeCheckBoxIntroAnim(Landroid/content/Context;Landroid/widget/CheckBox;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mActivity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mSelAllCheckBox:Landroid/widget/CheckBox;

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->showBasicEditModeCheckBoxOutroAnim(Landroid/content/Context;Landroid/widget/CheckBox;)V

    :goto_0
    return-void
.end method

.method public updateBottomButton()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isShowButtonShapeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mBottomDeleteButtonText:Landroid/widget/TextView;

    const v1, 0x7f080095

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0601fc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mBottomDeleteButtonText:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mBottomDeleteButtonText:Landroid/widget/TextView;

    const v1, 0x7f060296

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0601ff

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mBottomDeleteButtonText:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method public updateItemsSelectedText(I)V
    .locals 2

    const-string v0, "[updateItemsSelectedText] currentCount : "

    const-string v1, "TabSyncActionMode"

    invoke-static {p1, v0, v1}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mActivity:Landroid/app/Activity;

    const v0, 0x7f141043

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mActivity:Landroid/app/Activity;

    const v1, 0x7f14021d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mItemSelected:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mDelegate:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode$Delegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode$Delegate;->setCollapsingToolbarTitle(Ljava/lang/String;)V

    return-void
.end method

.method public updateSelectAllLayout(Z)V
    .locals 3

    const-string v0, "[updateSelectAllLayout] byClick : "

    const-string v1, "TabSyncActionMode"

    invoke-static {v0, v1, p1}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mDelegate:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode$Delegate;->getSelectedCount()I

    move-result v0

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mDelegate:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode$Delegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode$Delegate;->getGroupCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mSelAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->delayedUpdateSelectAllLayout(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->setCheckBoxDescription()V

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    if-nez v0, :cond_3

    const v0, 0x7f140801

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f140655

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f12005f

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mSelAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f14067d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f14067e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mSelAllLayout:Landroid/widget/FrameLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

.method public updateSelectAllLayoutDirectly()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mDelegate:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode$Delegate;->getSelectedCount()I

    move-result v0

    const-string v1, "[updateSelectAllLayoutDirectly] selectedCount : "

    const-string v2, "TabSyncActionMode"

    invoke-static {v0, v1, v2}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mSelAllCheckBox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->mDelegate:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode$Delegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode$Delegate;->getGroupCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->updateItemsSelectedText(I)V

    if-lez v0, :cond_1

    move v3, v4

    :cond_1
    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->showDeleteButton(Z)V

    return-void
.end method
