.class public Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;
.implements Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$Listener;
.implements Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$SatListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$CustomLinearLayoutManager;,
        Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$ControllerDelegate;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DetailCommonUi"

.field private static sLastClickedTime:J


# instance fields
.field private mActionModeContainerView:Landroid/view/View;

.field private mActionModeView:Landroid/widget/LinearLayout;

.field private mActionbarAnimRunning:Z

.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;

.field private mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field private mAppToolBar:Landroidx/appcompat/widget/Toolbar;

.field private final mBottomBarHandler:Landroid/os/Handler;

.field private mBottomBarView:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;

.field private mCheckStates:[Z

.field private mControllerDelegate:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$ControllerDelegate;

.field private mCountTextView:Landroid/widget/TextView;

.field private mCounter:I

.field private mDeleteList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseView;",
            ">;"
        }
    .end annotation
.end field

.field private mHeightToShift:I

.field private mHistoryItemList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseView;",
            ">;"
        }
    .end annotation
.end field

.field private mIsActionMode:Z

.field private mIsEnabled:Z

.field private mIsListScrolling:Z

.field private mIsLongPressDragging:Z

.field private mIsSecretMode:Z

.field private mIsShiftPressed:Z

.field private mItemScrollListener:Landroidx/recyclerview/widget/O0;

.field private mItemTouchListener:Landroidx/recyclerview/widget/N0;

.field private mKey:Ljava/lang/String;

.field private mListView:Landroidx/recyclerview/widget/RecyclerView;

.field private mMainAppBarTitle:Landroid/widget/TextView;

.field private mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

.field private mMainView:Landroid/view/View;

.field private mNoItemContainer:Landroidx/core/widget/NestedScrollView;

.field private mOffsetChangeListener:Lc6/e;

.field private mOptionMenu:Landroid/view/Menu;

.field private mPrevSelectedIndex:I

.field private mRvShiftHandler:Landroid/os/Handler;

.field private mSatDialog:Lm/l;

.field private mSatOptions:Landroidx/recyclerview/widget/RecyclerView;

.field private mSatSecretModeAdapter:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSelectAllCheckBox:Landroid/widget/CheckBox;

.field private mSelectAllLayout:Landroid/widget/LinearLayout;

.field private final mSelectedList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectionListener:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;

.field private mTouchActionDowned:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mIsActionMode:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mIsListScrolling:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mIsLongPressDragging:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mIsShiftPressed:Z

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mCounter:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mPrevSelectedIndex:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mBottomBarHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mRvShiftHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSelectedList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$3;-><init>(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mItemScrollListener:Landroidx/recyclerview/widget/O0;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$4;-><init>(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mItemTouchListener:Landroidx/recyclerview/widget/N0;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$6;-><init>(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mOffsetChangeListener:Lc6/e;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;-><init>(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSelectionListener:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, v0, p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mBottomBarView:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->lambda$confirmOpenDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->lambda$configureActionModeView$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->lambda$confirmOpenDialog$2(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private calculateSelectAllItemCount(I)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mHistoryItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mCounter:I

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mHistoryItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseView;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/settings/base_class/HistoryListBaseView;->getViewType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSelectedList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSelectedList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mCounter:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mCounter:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mCheckStates:[Z

    aput-boolean v3, v2, v1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mCheckStates:[Z

    aput-boolean v0, v2, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private configureActionModeView()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActionModeView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0913

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActionModeContainerView:Landroid/view/View;

    const v1, 0x7f0b0aec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mCountTextView:Landroid/widget/TextView;

    const v1, 0x7f14021e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActionModeContainerView:Landroid/view/View;

    const v1, 0x7f0b0b5f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSelectAllLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$5;-><init>(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActionModeContainerView:Landroid/view/View;

    const v1, 0x7f0b0540

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSelectAllLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/b;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSelectAllLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSelectAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/b;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mCounter:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->getSelectableItemCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_2
    sget-boolean v0, Lcom/sec/android/app/sbrowser/common/constants/settings/SettingsConstants;->SCAFE_MOCHA:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mCountTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/b;

    const/4 v3, 0x3

    invoke-direct {v1, v3, p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->displaySelectModeUI(Z)V

    return-void
.end method

.method private confirmOpenDialog(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryItemView;)V
    .locals 4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryItemView;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    const v1, 0x7f140e51

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    const v1, 0x7f140e50

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Lm/k;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    const v3, 0x7f1501c5

    invoke-direct {v1, v2, v3}, Lm/k;-><init>(Landroid/content/Context;I)V

    iget-object v2, v1, Lm/k;->a:Lm/h;

    iput-object v0, v2, Lm/h;->f:Ljava/lang/CharSequence;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/c;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/c;-><init>(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;)V

    const v2, 0x7f1402ac

    invoke-virtual {v1, v2, v0}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/d;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/d;-><init>(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;Ljava/lang/String;)V

    const p0, 0x7f1402ad

    invoke-virtual {v0, p0, v1}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p0

    invoke-virtual {p0}, Lm/k;->create()Lm/l;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->lambda$configureActionModeView$4()V

    return-void
.end method

.method private dismissSatDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSatDialog:Lm/l;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSatDialog:Lm/l;

    invoke-virtual {v0}, Lm/y;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSatDialog:Lm/l;

    :cond_1
    return-void
.end method

.method private displaySelectModeUI(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    check-cast v0, Lm/n;

    invoke-virtual {v0}, Lm/n;->getSupportActionBar()Lm/b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lm/b;->q(Z)V

    invoke-virtual {v0, v1}, Lm/b;->n(Z)V

    invoke-virtual {v0, v1}, Lm/b;->r(Z)V

    invoke-virtual {v0, p1}, Lm/b;->p(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;

    invoke-interface {v1, p1}, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;->setIsInActionMode(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/settings/SettingsAppBarUtil;->getToolbar(Landroid/app/Activity;)Landroidx/appcompat/widget/Toolbar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroidx/appcompat/widget/Toolbar;->setContentInsetsAbsolute(II)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/settings/SettingsAppBarUtil;->getToolbarTitle(Landroid/app/Activity;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz p1, :cond_1

    const/16 v2, 0x8

    :cond_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lm/b;->t()V

    invoke-virtual {v0}, Lm/b;->u()V

    :cond_2
    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActionModeContainerView:Landroid/view/View;

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lm/b;->l(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->lambda$configureActionModeView$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->lambda$scrollListIfRequired$0(I)V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->lambda$configureActionModeView$5(Landroid/view/View;)V

    return-void
.end method

.method private getConfirmCancelID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mControllerDelegate:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$ControllerDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$ControllerDelegate;->getConfirmCancelID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getConfirmOkID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mControllerDelegate:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$ControllerDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$ControllerDelegate;->getConfirmOkID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getItemClickID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mControllerDelegate:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$ControllerDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$ControllerDelegate;->getItemClickID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getItemPositionIfOnlyOneExist()I
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mHistoryItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mAdapter:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseAdapter;->getItemCount()I

    move-result v0

    const/4 v2, 0x0

    move v4, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mHistoryItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseView;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/settings/base_class/HistoryListBaseView;->getViewType()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    add-int/lit8 v3, v3, 0x1

    move v4, v2

    :cond_1
    const/4 v5, 0x1

    if-le v3, v5, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v4
.end method

.method private getSelectableItemCount()I
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mHistoryItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mAdapter:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseAdapter;->getItemCount()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mHistoryItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseView;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/settings/base_class/HistoryListBaseView;->getViewType()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sub-int/2addr v0, v2

    return v0
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->lambda$createSelectionMode$3(Landroid/view/View;)V

    return-void
.end method

.method private handleClick(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryItemView;ILjava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mKey:Ljava/lang/String;

    const-string v1, "safe_browsing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->getScreenID()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->getItemClickID()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->confirmOpenDialog(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryItemView;)V

    goto/16 :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mIsActionMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mCheckStates:[Z

    aget-boolean v0, v0, p3

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mIsShiftPressed:Z

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    iget p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mPrevSelectedIndex:I

    if-ne p1, v3, :cond_1

    iget p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mCounter:I

    if-nez p1, :cond_1

    iput v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mPrevSelectedIndex:I

    :cond_1
    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->handleShiftClick(I)V

    goto :goto_0

    :cond_2
    const v2, 0x7f0b03f3

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v5

    xor-int/2addr v5, v4

    invoke-virtual {v2, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p0, p3}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->updateSelectedList(I)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->setHeightToShift(Landroid/view/View;)V

    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mAdapter:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;

    invoke-virtual {v6, p1, v5}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->setSelectedItemBackgroundHighlight(Landroid/view/View;Z)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mAdapter:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-virtual {v5, p1, p2, v2, p4}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->setContentDescription(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryItemView;ZLjava/lang/String;)V

    :cond_4
    :goto_0
    if-eqz v0, :cond_5

    move p3, v3

    :cond_5
    iput p3, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mPrevSelectedIndex:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mBottomBarView:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;

    iget p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mCounter:I

    if-lez p2, :cond_6

    move v1, v4

    :cond_6
    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->setDeleteVisibility(Z)V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->updateSelectAllCheckBox(Z)V

    goto :goto_1

    :cond_7
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mIsShiftPressed:Z

    if-eqz p1, :cond_8

    iput v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mPrevSelectedIndex:I

    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->handleShiftClick(I)V

    iput p3, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mPrevSelectedIndex:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->createSelectionMode(Z)V

    :cond_8
    :goto_1
    return-void
.end method

.method private handleSelectAllCheckBox()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mAdapter:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseAdapter;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mCheckStates:[Z

    array-length v1, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mCheckStates:[Z

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v5

    aput-boolean v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->calculateSelectAllItemCount(I)V

    goto :goto_1

    :cond_2
    iput v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mCounter:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSelectedList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mAdapter:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mBottomBarView:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mCounter:I

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->setDeleteVisibility(Z)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mPrevSelectedIndex:I

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->updateSelectAllCheckBox(Z)V

    return-void
.end method

.method private handleShiftClick(I)V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mPrevSelectedIndex:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mPrevSelectedIndex:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move v0, p1

    :cond_0
    :goto_0
    if-gt v0, p1, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->setCheckByShiftClick(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mAdapter:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    return-void
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActionbarAnimRunning:Z

    return p0
.end method

.method private initArguments()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "sbrowser.settings.show_fragment"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sbrowser.settings.show_fragment_args"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->setTitle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "key"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mKey:Ljava/lang/String;

    const-string v1, "is_secretmode"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mIsSecretMode:Z

    const-string v1, "is_enabled"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mIsEnabled:Z

    return-void
.end method

.method private initView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mControllerDelegate:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$ControllerDelegate;

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e082d

    invoke-virtual {v1, v2, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mMainView:Landroid/view/View;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/settings/SettingsAppBarUtil;->getAppBarLayout(Landroid/app/Activity;)Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mOffsetChangeListener:Lc6/e;

    invoke-virtual {p2, v1}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lc6/e;)V

    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/settings/SettingsAppBarUtil;->getCollapsingToolbarTitle(Landroid/app/Activity;)Landroid/widget/TextView;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mMainAppBarTitle:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mMainView:Landroid/view/View;

    const v1, 0x7f0b06c5

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mIsEnabled:Z

    invoke-virtual {p2, v1}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setChecked(Z)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setAccessibilityTitle(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {p2, p0}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mKey:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "block_unwanted_webpages"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v2, "safe_browsing"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "block_popups"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    move v1, v0

    :goto_0
    packed-switch v1, :pswitch_data_0

    move p2, v0

    goto :goto_1

    :pswitch_0
    const v0, 0x7f140c63

    const p2, 0x7f140d4e

    goto :goto_1

    :pswitch_1
    const v0, 0x7f140cbf

    const p2, 0x7f140d66

    goto :goto_1

    :pswitch_2
    const v0, 0x7f140c69

    const p2, 0x7f140d4f

    :goto_1
    if-eqz v0, :cond_5

    if-eqz p2, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->getScreenID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, v0, p2}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setSALoggingId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mMainView:Landroid/view/View;

    const v0, 0x7f0b03fa

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mItemTouchListener:Landroidx/recyclerview/widget/N0;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/N0;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mItemScrollListener:Landroidx/recyclerview/widget/O0;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/O0;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mMainView:Landroid/view/View;

    const v0, 0x7f0b0ad5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/core/widget/NestedScrollView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mNoItemContainer:Landroidx/core/widget/NestedScrollView;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mMainView:Landroid/view/View;

    const v0, 0x7f0b03fd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSatOptions:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->updateSatView()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->updateSecretModeView()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mBottomBarView:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->showBottomDeleteButton(Landroid/view/LayoutInflater;)V

    :cond_6
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2936eac7 -> :sswitch_2
        -0x207016c7 -> :sswitch_1
        0x3d30d595 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isEnableAllowBlock()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mKey:Ljava/lang/String;

    const-string v1, "block_popups"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mIsSecretMode:Z

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isEnableDeleteItems()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mKey:Ljava/lang/String;

    const-string v1, "safe_browsing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->isActionMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mControllerDelegate:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$ControllerDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$ControllerDelegate;->hasNoData()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isEnableSortByFrequent()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mKey:Ljava/lang/String;

    const-string v1, "view_all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mControllerDelegate:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$ControllerDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$ControllerDelegate;->hasNoData()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mControllerDelegate:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$ControllerDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$ControllerDelegate;->getSortMode()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isEnableSortByRecent()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mKey:Ljava/lang/String;

    const-string v1, "view_all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mControllerDelegate:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$ControllerDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$ControllerDelegate;->hasNoData()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mControllerDelegate:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$ControllerDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$ControllerDelegate;->getSortMode()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;)Lcom/google/android/material/appbar/AppBarLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mBottomBarHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private synthetic lambda$configureActionModeView$4()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method

.method private synthetic lambda$configureActionModeView$5(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    xor-int/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->handleSelectAllCheckBox()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mPrevSelectedIndex:I

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/e;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/e;-><init>(ILjava/lang/Object;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$configureActionModeView$6(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->handleSelectAllCheckBox()V

    return-void
.end method

.method private synthetic lambda$configureActionModeView$7(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->toggle()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->handleSelectAllCheckBox()V

    return-void
.end method

.method private synthetic lambda$confirmOpenDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->getScreenID()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->getConfirmCancelID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$confirmOpenDialog$2(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->openLink(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->getScreenID()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->getConfirmOkID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$createSelectionMode$3(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->destroySelectionMode()V

    return-void
.end method

.method private lambda$scrollListIfRequired$0(I)V
    .locals 3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e2e147b    # 0.17f

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/16 v1, 0xfa

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;I)V

    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mCountTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mIsActionMode:Z

    return p0
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;)Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    return-object p0
.end method

.method private openLink(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.android.browser.application_id"

    const-string v2, "com.sec.android.app.sbrowser.beta"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "create_new_tab"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;)Landroidx/core/widget/NestedScrollView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mNoItemContainer:Landroidx/core/widget/NestedScrollView;

    return-object p0
.end method

.method public static bridge synthetic q(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mTouchActionDowned:Z

    return p0
.end method

.method public static bridge synthetic r(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActionbarAnimRunning:Z

    return-void
.end method

.method private resetCheckBoxStates()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mAdapter:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mCheckStates:[Z

    aput-boolean v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static bridge synthetic s(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mIsListScrolling:Z

    return-void
.end method

.method private scrollListIfRequired()V
    .locals 5

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mIsActionMode:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mHeightToShift:I

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mHeightToShift:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;->isAppbarExpanded()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;->collapseAppbar()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mRvShiftHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mRvShiftHandler:Landroid/os/Handler;

    new-instance v2, LG6/c;

    const/16 v3, 0xe

    invoke-direct {v2, v0, v3, p0}, LG6/c;-><init>(IILjava/lang/Object;)V

    const-wide/16 v3, 0xfa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private sendViewAllEvent()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->getScreenID()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    const v1, 0x7f140c49

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setCheckByShiftClick(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mCheckStates:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mAdapter:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mCheckStates:[Z

    aget-boolean v1, v0, p1

    xor-int/lit8 v1, v1, 0x1

    aput-boolean v1, v0, p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSelectedList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSelectedList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mCounter:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mCounter:I

    :cond_1
    return-void
.end method

.method private setHeightToShift(Landroid/view/View;)V
    .locals 5

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mCounter:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070149

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    const/4 v3, 0x0

    iput v3, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mHeightToShift:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-le v3, v0, :cond_1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    sub-int/2addr p1, v0

    add-int/2addr p1, v2

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mHeightToShift:I

    goto :goto_0

    :cond_1
    sub-int v4, v0, v2

    if-le v3, v4, :cond_2

    sub-int/2addr v0, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mHeightToShift:I

    :cond_2
    :goto_0
    return-void
.end method

.method private setListViewProperty(Z)V
    .locals 6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071354

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mKey:Ljava/lang/String;

    const-string v3, "anti_tracking_level"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mIsSecretMode:Z

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFastScrollerEnabled(Z)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFillBottomEnabled(Z)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopBottomPadding(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    if-nez v2, :cond_0

    move v4, v5

    :cond_0
    xor-int/lit8 p1, v0, 0x1

    invoke-virtual {p0, v4, p1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(ZZ)V

    return-void
.end method

.method private setMenuItemVisibility()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mOptionMenu:Landroid/view/Menu;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mControllerDelegate:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$ControllerDelegate;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mKey:Ljava/lang/String;

    const-string v1, "anti_tracking_level"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mKey:Ljava/lang/String;

    const-string v1, "anti_tracking_secret_mode_level"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mOptionMenu:Landroid/view/Menu;

    const v1, 0x7f0b0e18

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mOptionMenu:Landroid/view/Menu;

    const v2, 0x7f0b0e17

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mOptionMenu:Landroid/view/Menu;

    const v3, 0x7f0b03df

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mOptionMenu:Landroid/view/Menu;

    const v4, 0x7f0b00d4

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->isEnableSortByRecent()Z

    move-result v4

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->isEnableSortByFrequent()Z

    move-result v0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->isEnableDeleteItems()Z

    move-result v0

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->isEnableAllowBlock()Z

    move-result p0

    invoke-interface {v3, p0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    :goto_0
    return-void
.end method

.method private setNoItemSatOptionAdapter()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mKey:Ljava/lang/String;

    const-string v1, "anti_tracking_level"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mKey:Ljava/lang/String;

    const-string v1, "anti_tracking_secret_mode_level"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSatOptions:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;-><init>(Landroid/content/Context;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSatSecretModeAdapter:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;->setListener(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$SatListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSatSecretModeAdapter:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/u0;->setHasStableIds(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSatOptions:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSatSecretModeAdapter:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSatOptions:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/sesl_common/SeslUtil;->getRoundedCornerColor(Landroid/content/Context;Z)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSatOptions:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/sec/android/app/sbrowser/common/view/RoundedItemDecoration;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4, v0}, Lcom/sec/android/app/sbrowser/common/view/RoundedItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/F0;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSatOptions:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private setTitle(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "key"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "block_unwanted_webpages"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f140228

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    const-string v0, "block_popups"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f140948

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string v0, "anti_tracking_level"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "anti_tracking_secret_mode_level"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "safe_browsing"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f140a34

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    const-string v0, "view_all"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f140448

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f14093a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showDeleteSelection()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->createSelectionMode(Z)V

    return-void
.end method

.method private showSatDialog()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSatDialog:Lm/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lm/k;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    const v2, 0x7f1501c5

    invoke-direct {v0, v1, v2}, Lm/k;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f0e0832

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lm/k;->setView(Landroid/view/View;)Lm/k;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$2;-><init>(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;)V

    const v2, 0x7f14084e

    invoke-virtual {v0, v2, v1}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    invoke-virtual {v0}, Lm/k;->create()Lm/l;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSatDialog:Lm/l;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSatDialog:Lm/l;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSatDialog:Lm/l;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static bridge synthetic t(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mTouchActionDowned:Z

    return-void
.end method

.method public static bridge synthetic u(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->scrollListIfRequired()V

    return-void
.end method

.method private updateBottomBar()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mCountTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mCounter:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f14021e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mBottomBarView:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->setDeleteVisibility(Z)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mTouchActionDowned:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mBottomBarView:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->setDeleteVisibility(Z)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mCounter:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f120001

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mCountTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mCountTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateCheckBoxIfOnlyOneExist()V
    .locals 5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->getItemPositionIfOnlyOneExist()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSelectedList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mCounter:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    const v4, 0x7f0b03f3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    if-eqz v4, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mCheckStates:[Z

    aget-boolean v2, v1, v0

    xor-int/lit8 v2, v2, 0x1

    aput-boolean v2, v1, v0

    invoke-virtual {v4}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v4, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mAdapter:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mCheckStates:[Z

    aget-boolean p0, p0, v0

    invoke-virtual {v1, v3, p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->setSelectedItemBackgroundHighlight(Landroid/view/View;Z)V

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateSatView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mKey:Ljava/lang/String;

    const-string v1, "anti_tracking_level"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mKey:Ljava/lang/String;

    const-string v1, "view_all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mKey:Ljava/lang/String;

    const-string v1, "anti_tracking_secret_mode_level"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private updateSecretModeView()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mIsSecretMode:Z

    if-nez v0, :cond_0

    const-string v0, "anti_tracking_secret_mode_level"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->TAG:Ljava/lang/String;

    const-string v1, "updateSecretModeView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mControllerDelegate:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$ControllerDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mNoItemContainer:Landroidx/core/widget/NestedScrollView;

    const v1, 0x7f0b03eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mControllerDelegate:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$ControllerDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$ControllerDelegate;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mNoItemContainer:Landroidx/core/widget/NestedScrollView;

    const v1, 0x7f0b03fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mControllerDelegate:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$ControllerDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$ControllerDelegate;->getSecretModeSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mNoItemContainer:Landroidx/core/widget/NestedScrollView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public static bridge synthetic v(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->updateBottomBar()V

    return-void
.end method


# virtual methods
.method public createSelectionMode(Z)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mIsActionMode:Z

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mAdapter:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->setIsActionMode(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->setMenuItemVisibility()V

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->updateCheckBoxIfOnlyOneExist()V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->configureActionModeView()V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->updateSelectAllCheckBox(Z)V

    invoke-interface {v0, v2}, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;->setIsInActionMode(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->showSelectAllCheckBoxAnimation()V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->startCheckBoxAnimation(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mAdapter:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mBottomBarView:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mCounter:I

    if-lez v0, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->setDeleteVisibility(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mControllerDelegate:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$ControllerDelegate;

    const-string v0, "555"

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$ControllerDelegate;->setScreenID(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActionModeContainerView:Landroid/view/View;

    const v0, 0x7f0b0af8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isShowButtonShapeEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActionModeContainerView:Landroid/view/View;

    const v0, 0x7f0b0af9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_3

    const v0, 0x7f0800ad

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    const v0, 0x7f060e10

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    return-void
.end method

.method public deleteSelectedData()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mAdapter:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mHistoryItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseAdapter;->getItemCount()I

    move-result v0

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mDeleteList:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mCheckStates:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mHistoryItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseView;

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mDeleteList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mDeleteList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mDeleteList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mHistoryItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mDeleteList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mControllerDelegate:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$ControllerDelegate;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mDeleteList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$ControllerDelegate;->deleteItems(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public destroySelectionMode()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;->setIsInActionMode(Z)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->displaySelectModeUI(Z)V

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mIsActionMode:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mAdapter:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->setIsActionMode(Z)V

    iput v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mCounter:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSelectedList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->resetCheckBoxStates()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->showSelectAllCheckBoxAnimation()V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->startCheckBoxAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mBottomBarView:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->setDeleteVisibility(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->updateAppBarInfo()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071354

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopBottomPadding(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetHoverBottomPadding(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mAdapter:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mPrevSelectedIndex:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->setMenuItemVisibility()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mControllerDelegate:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$ControllerDelegate;

    const-string v0, "554"

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$ControllerDelegate;->setScreenID(Ljava/lang/String;)V

    return-void
.end method

.method public getAdapter()Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mAdapter:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getListView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getMainView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mMainView:Landroid/view/View;

    return-object p0
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mControllerDelegate:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$ControllerDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$ControllerDelegate;->getScreenID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isActionMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mIsActionMode:Z

    return p0
.end method

.method public onActionHome()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mIsActionMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->destroySelectionMode()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    sget-object p1, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->TAG:Ljava/lang/String;

    const-string v0, "onCheckedChanged : "

    invoke-static {v0, p1, p2}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mControllerDelegate:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$ControllerDelegate;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$ControllerDelegate;->setBlockStatus(Z)V

    return-void
.end method

.method public onClickDeleteButton()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->getScreenID()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    const v1, 0x7f140cbd

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/settings/SettingsAppBarUtil;->getToolbar(Landroid/app/Activity;)Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mAppToolBar:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/settings/SettingsAppBarUtil;->getActionModeView(Landroid/app/Activity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActionModeView:Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSavedInstanceState:Landroid/os/Bundle;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mKey:Ljava/lang/String;

    const-string v1, "anti_tracking_secret_mode_level"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mKey:Ljava/lang/String;

    const-string v0, "anti_tracking_level"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f100023

    invoke-virtual {p2, p0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0

    :cond_1
    const p0, 0x7f100022

    invoke-virtual {p2, p0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->initArguments()V

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->initView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mMainView:Landroid/view/View;

    return-object p0
.end method

.method public onCtrlAndAKeyPressed()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mIsActionMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->handleSelectAllCheckBox()V

    :cond_0
    return-void
.end method

.method public onCtrlAndDKeyPressed()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->deleteSelectedData()V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mIsActionMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mDeleteList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->destroySelectionMode()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mAdapter:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->setIsActionMode(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mDeleteList:Ljava/util/concurrent/CopyOnWriteArrayList;

    :cond_0
    return-void
.end method

.method public onCtrlAndMKeyPressed()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mOptionMenu:Landroid/view/Menu;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mIsActionMode:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mAppToolBar:Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mAppToolBar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v3, :cond_2

    check-cast v2, Landroidx/appcompat/widget/ActionMenuView;

    iget-object v2, v2, Landroidx/appcompat/widget/ActionMenuView;->t:Lt/m;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lt/m;->l()Z

    move-result v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mOffsetChangeListener:Lc6/e;

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->removeOnOffsetChangedListener(Lc6/e;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mItemTouchListener:Landroidx/recyclerview/widget/N0;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/N0;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mItemScrollListener:Landroidx/recyclerview/widget/O0;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/O0;)V

    :cond_1
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->sLastClickedTime:J

    return-void
.end method

.method public onItemClick(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseView;ILjava/lang/String;)V
    .locals 5
    .param p2    # Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onItemClick : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/base_class/HistoryListBaseView;->getViewType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sget-wide v3, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->sLastClickedTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1f4

    cmp-long v1, v1, v3

    const/16 v2, 0x8

    if-gez v1, :cond_0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/base_class/HistoryListBaseView;->getViewType()I

    move-result v1

    if-eq v1, v2, :cond_0

    const-string p0, "Prevent multiple click of privacy detail item"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->sLastClickedTime:J

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mIsLongPressDragging:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mControllerDelegate:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$ControllerDelegate;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/base_class/HistoryListBaseView;->getViewType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    check-cast p2, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryItemView;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->handleClick(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryItemView;ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/base_class/HistoryListBaseView;->getViewType()I

    move-result p1

    const/4 p3, 0x6

    if-ne p1, p3, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mControllerDelegate:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$ControllerDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$ControllerDelegate;->satMoreClick()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->sendViewAllEvent()V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/base_class/HistoryListBaseView;->getViewType()I

    move-result p1

    if-ne p1, v2, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mControllerDelegate:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$ControllerDelegate;

    check-cast p2, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryPATSwitchView;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryPATSwitchView;->getSwitchState()Z

    move-result p3

    invoke-interface {p1, p3}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$ControllerDelegate;->setPATStatus(Z)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryPATSwitchView;->getSwitchState()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->sendEventForPAT(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onItemLongClick(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseView;I)Z
    .locals 3

    sget-object p2, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->TAG:Ljava/lang/String;

    const-string v0, "onItemLongClick : "

    invoke-static {p3, v0, p2}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mIsLongPressDragging:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return v0

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->seslStartLongPressMultiSelection()V

    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mIsActionMode:Z

    const v1, 0x7f0b03f3

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mCheckStates:[Z

    aget-boolean p2, p2, p3

    if-nez p2, :cond_3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->toggle()V

    invoke-virtual {p0, p3}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->updateSelectedList(I)Z

    move-result p2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->setHeightToShift(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mAdapter:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->setSelectedItemBackgroundHighlight(Landroid/view/View;Z)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->updateSelectAllCheckBox(Z)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-virtual {p2, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p0, p3}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->updateSelectedList(I)Z

    move-result p2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->setHeightToShift(Landroid/view/View;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mAdapter:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->setSelectedItemBackgroundHighlight(Landroid/view/View;Z)V

    :cond_2
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->createSelectionMode(Z)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->updateSelectAllCheckBox(Z)V

    :cond_3
    :goto_0
    iput p3, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mPrevSelectedIndex:I

    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mIsListScrolling:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mControllerDelegate:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$ControllerDelegate;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$ControllerDelegate;->sortBy(I)V

    goto :goto_0

    :sswitch_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mControllerDelegate:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$ControllerDelegate;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$ControllerDelegate;->sortBy(I)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->getScreenID()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    const v1, 0x7f140c45

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->showSatDialog()V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->getScreenID()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    const v1, 0x7f140cbc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->showDeleteSelection()V

    goto :goto_0

    :sswitch_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    const-class v0, Lcom/sec/android/app/sbrowser/settings/PopupsPreferenceFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->startFragment(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->setMenuItemVisibility()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b00d4 -> :sswitch_4
        0x7f0b03df -> :sswitch_3
        0x7f0b0a22 -> :sswitch_2
        0x7f0b0e17 -> :sswitch_1
        0x7f0b0e18 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->dismissSatDialog()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mOptionMenu:Landroid/view/Menu;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->setMenuItemVisibility()V

    return-void
.end method

.method public onResume()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    const-string v0, "anti_tracking_level"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "view_all"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "anti_tracking_secret_mode_level"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$1;-><init>(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSatLevelChanged(Landroid/view/View;I)V
    .locals 2

    sget-object p1, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->TAG:Ljava/lang/String;

    const-string v0, "onSatLevelChanged pos : "

    const-string v1, " >> checked!"

    invoke-static {p2, v0, v1, p1}, Landroidx/recyclerview/widget/P;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mControllerDelegate:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$ControllerDelegate;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$ControllerDelegate;->setSatLevel(I)V

    return-void
.end method

.method public onShiftKeyPressed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mIsShiftPressed:Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    sget-object p1, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onViewCreated mIsSecretMode : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mIsSecretMode:Z

    invoke-static {p1, p2, v0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->A(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mIsSecretMode:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mKey:Ljava/lang/String;

    const-string p2, "anti_tracking_secret_mode_level"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-direct {p1, p2, v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;-><init>(Landroid/app/Activity;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mAdapter:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->setListener(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$Listener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mAdapter:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/u0;->setHasStableIds(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mAdapter:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_0

    const p1, 0x7f060e1e

    goto :goto_0

    :cond_0
    const p1, 0x7f060e26

    :goto_0
    invoke-virtual {p2, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/view/RoundedItemDecoration;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p1}, Lcom/sec/android/app/sbrowser/common/view/RoundedItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/F0;)V

    const-string p1, "safe_browsing"

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSelectionListener:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->onCreate()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSelectionListener:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->setSeslOnMultiSelectedListener()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSelectionListener:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->setSeslLongPressMultiSelectionListener()V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$CustomLinearLayoutManager;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$CustomLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/J0;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->setNoItemSatOptionAdapter()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->TAG:Ljava/lang/String;

    const-string v1, "onWindowFocusChanged hasFocus : "

    invoke-static {v1, v0, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->dismissSatDialog()V

    :cond_0
    return-void
.end method

.method public requestFocusOnSelectAll()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public sendEventForPAT(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->getScreenID()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    const v1, 0x7f140caa

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    invoke-static {v0, p0, v1, v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public setBottombarFocus()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mBottomBarView:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->requestFocusOnDelete()V

    return-void
.end method

.method public setControllerDelegate(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$ControllerDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mControllerDelegate:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$ControllerDelegate;

    return-void
.end method

.method public setListData(Ljava/util/concurrent/CopyOnWriteArrayList;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseView;",
            ">;Z)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mAdapter:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;

    const-string v1, "anti_tracking_secret_mode_level"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mControllerDelegate:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$ControllerDelegate;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$ControllerDelegate;->hasNoData()Z

    move-result v0

    xor-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->setListViewProperty(Z)V

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mKey:Ljava/lang/String;

    const-string v2, "anti_tracking_level"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mNoItemContainer:Landroidx/core/widget/NestedScrollView;

    const v1, 0x7f0b03eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mControllerDelegate:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$ControllerDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$ControllerDelegate;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mNoItemContainer:Landroidx/core/widget/NestedScrollView;

    const v1, 0x7f0b03fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mControllerDelegate:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$ControllerDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$ControllerDelegate;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mNoItemContainer:Landroidx/core/widget/NestedScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mNoItemContainer:Landroidx/core/widget/NestedScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mHistoryItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mHistoryItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mCheckStates:[Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mAdapter:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->setmCheckStates([Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mAdapter:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->setListData(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mAdapter:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSatSecretModeAdapter:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSatSecretModeAdapter:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setChecked(Z)V

    :cond_4
    return-void
.end method

.method public setLongPressDragging(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mIsLongPressDragging:Z

    return-void
.end method

.method public showSelectAllCheckBoxAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f010037

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActionbarAnimRunning:Z

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$7;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$7;-><init>(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public startCheckBoxAnimation(Z)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_0

    const v1, 0x7f010037

    goto :goto_0

    :cond_0
    const v1, 0x7f010035

    :goto_0
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryUiUtils;->getChangeBounds(Z)LY2/i;

    move-result-object v3

    invoke-static {v2, v3}, LY2/j0;->a(Landroid/view/ViewGroup;LY2/f0;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0b03f3

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    if-nez v4, :cond_1

    goto :goto_3

    :cond_1
    if-eqz p1, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    const/16 v5, 0x8

    :goto_2
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public updateAppBarInfo()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mMainAppBarTitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mIsActionMode:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mCounter:I

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f14021e

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mCounter:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f120001

    invoke-virtual {v1, v3, p0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    const p0, 0x7f140a34

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    return-void
.end method

.method public updateCheckedState()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mAdapter:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mCheckStates:[Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->setmCheckStates([Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mTouchActionDowned:Z

    return-void
.end method

.method public updateContentDescription(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140289

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f14028a

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p0, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateSelectAllCheckBox(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mAdapter:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->getSelectableItemCount()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mCounter:I

    if-ne v1, v0, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mTouchActionDowned:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mBottomBarView:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->setDeleteVisibility(Z)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_4
    :goto_0
    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mCounter:I

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mBottomBarView:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->setBottomBarDeleteText(Z)V

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->updateBottomBar()V

    if-eqz p1, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mCounter:I

    if-ne v1, v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f14067d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f14067e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f14105f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSelectAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSelectAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iget p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mCounter:I

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    const v0, 0x7f141084

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mCounter:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mActivity:Landroid/app/Activity;

    const v0, 0x7f141085

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->updateAppBarInfo()V

    return-void
.end method

.method public updateSelectedList(I)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mCheckStates:[Z

    aget-boolean v1, v0, p1

    xor-int/lit8 v1, v1, 0x1

    aput-boolean v1, v0, p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSelectedList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSelectedList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mCounter:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mSelectedList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mCounter:I

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->mCheckStates:[Z

    aget-boolean p0, p0, p1

    return p0
.end method
