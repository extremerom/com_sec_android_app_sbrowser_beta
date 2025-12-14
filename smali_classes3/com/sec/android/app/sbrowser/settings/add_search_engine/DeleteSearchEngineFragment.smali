.class public Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;
.super Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/settings/KeyPressCallback;
.implements Lcom/sec/android/app/sbrowser/common/model/settings/CtrlKeyHandler;
.implements Lc6/e;


# instance fields
.field private mActionModeView:Landroid/widget/LinearLayout;

.field private mActivity:Landroid/app/Activity;

.field mAdapterListener:Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/DeleteSearchEngineAdapterListener;

.field private mAppbarState:I

.field private mBottomBarController:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

.field private final mBottomBarHandler:Landroid/os/Handler;

.field private mBottomBarMarginView:Landroid/view/View;

.field private mCancelButton:Landroid/view/View;

.field private mContainerView:Landroid/view/View;

.field private mCountTextView:Landroid/widget/TextView;

.field private mCounter:I

.field private mDeleteBottomBarButton:Landroid/widget/LinearLayout;

.field private mDeleteEngineListSize:I

.field private mDeleteMenuItem:Landroid/widget/LinearLayout;

.field private mDeleteTextView:Landroid/widget/TextView;

.field private final mHandler:Landroid/os/Handler;

.field private mHeightToShift:I

.field private mItemTouchListener:Landroidx/recyclerview/widget/N0;

.field private final mKeyListener:Landroid/view/View$OnKeyListener;

.field private mMaxStringListSize:I

.field private mPreSavedList:[Ljava/lang/String;

.field private mRvShiftHandler:Landroid/os/Handler;

.field private mSelectAllCheckBox:Landroid/widget/CheckBox;

.field private mSelectAllLayout:Landroid/widget/LinearLayout;

.field private final mSelectedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchActionDowned:Z

.field private mVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mCounter:I

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mBottomBarHandler:Landroid/os/Handler;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mRvShiftHandler:Landroid/os/Handler;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mSelectedList:Ljava/util/ArrayList;

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mAppbarState:I

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/a;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/a;-><init>(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mKeyListener:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$4;-><init>(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mItemTouchListener:Landroidx/recyclerview/widget/N0;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$6;-><init>(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mAdapterListener:Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/DeleteSearchEngineAdapterListener;

    return-void
.end method

.method public static bridge synthetic A(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->getSelectedString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic B(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->handleSelectAllCheckBox()V

    return-void
.end method

.method public static bridge synthetic C(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->scrollListIfRequired()V

    return-void
.end method

.method public static bridge synthetic D(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->setHeightToShift(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic E(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->updateSelectAllCheckBox()V

    return-void
.end method

.method private checkAndRemoveListItem(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mMaxStringListSize:I

    const-string v3, "DeleteSearchEngineFragment"

    if-ge v1, v2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mPreSavedList:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "Removing matched name"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mPreSavedList:[Ljava/lang/String;

    const-string p1, ""

    aput-object p1, p0, v1

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "something wrong item check is not on list!"

    invoke-static {p0, p1, v3}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private checkBottomBarStatus()V
    .locals 4

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mDeleteEngineListSize:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget v3, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mDeleteEngineListSize:I

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mCheckStates:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->updateBottomBarVisibility(Z)V

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->updateBottomBarVisibility(Z)V

    return-void
.end method

.method private checkCounterValidation()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mListSize:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mCheckStates:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mCounter:I

    if-eq v1, v0, :cond_2

    iput v1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mCounter:I

    :cond_2
    return-void
.end method

.method private checkEngineIsNotDeletable(Ljava/lang/String;)Z
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "google"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "search engine "

    const-string v3, "DeleteSearchEngineFragment"

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " contains google, not able to remove"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getSearchEngine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is current search engine"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private deleteItemAndExit()V
    .locals 10

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    const-string v1, "DeleteSearchEngineFragment"

    if-nez v0, :cond_0

    const-string p0, "Abnormal status!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {v0}, Lw2/F;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "customized_search_engine_list"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "NO prevList item Abnormal status!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->exitWithoutSaving()V

    :cond_1
    move v2, v3

    :goto_0
    iget v6, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mMaxStringListSize:I

    if-ge v2, v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mPreSavedList:[Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mListAvailableEngines:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    move v7, v2

    move v6, v3

    move v8, v6

    :goto_1
    iget v9, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mListSize:I

    if-ge v6, v9, :cond_5

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mCheckStates:[Z

    aget-boolean v9, v9, v6

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;

    invoke-virtual {v9, v6}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;->getNameByPosition(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->checkAndRemoveListItem(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    move v8, v2

    goto :goto_2

    :cond_3
    move v7, v3

    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    move v2, v3

    :goto_3
    iget v6, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mMaxStringListSize:I

    if-ge v2, v6, :cond_8

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mPreSavedList:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    if-eqz v2, :cond_6

    const-string v6, ","

    invoke-static {v5, v6}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_6
    invoke-static {v5}, LB/e;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mPreSavedList:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_7
    const-string v6, "Position"

    const-string v9, " is empty "

    invoke-static {v2, v6, v9, v1}, Landroidx/recyclerview/widget/P;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {v0}, Lw2/F;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "saved_engine_status"

    if-eqz v7, :cond_9

    const-string v2, "ALL_REMOVED"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_5

    :cond_9
    if-eqz v8, :cond_a

    const-string v2, "NEUTRAL"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_a
    :goto_5
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_b
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_c
    return-void
.end method

.method private exitWithoutSaving()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private getDeletedString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, " "

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mCounter:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    const p0, 0x7f14043c

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const p0, 0x7f140653

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const v1, 0x7f140655

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getSelectedString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, " "

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f140289

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const v1, 0x7f14028a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mCounter:I

    if-lez p0, :cond_2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f12005f

    invoke-virtual {v0, v3, p0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    const p0, 0x7f140801

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const v2, 0x7f140655

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    const-string v0, ", "

    invoke-static {v1, v0, p0}, Lt/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->lambda$onCreateView$1(Landroid/view/View;)V

    return-void
.end method

.method private handleSelectAllCheckBox()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mCheckStates:[Z

    array-length v1, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mCheckStates:[Z

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v5

    aput-boolean v5, v4, v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mSearchEngineRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/h1;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/DeleteSearchEngineListViewHolder;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineViewHolder;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mCheckStates:[Z

    aget-boolean v5, v5, v3

    invoke-virtual {v4, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sec/android/app/sbrowser/settings/add_search_engine/b;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/b;-><init>(ILjava/lang/Object;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mCounter:I

    move v1, v2

    :goto_1
    if-ge v1, v0, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mSelectedList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mSelectedList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iput v2, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mCounter:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_5
    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mCounter:I

    if-nez v0, :cond_6

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->updateBottomBarVisibility(Z)V

    goto :goto_2

    :cond_6
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->updateBottomBarVisibility(Z)V

    :goto_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->updateSelectAllCheckBox()V

    return-void
.end method

.method private hideBottomBar()V
    .locals 4

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mVisible:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mVisible:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mBottomBarHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mBottomBarHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/add_search_engine/b;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/b;-><init>(ILjava/lang/Object;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->lambda$onCreateView$3(Landroid/view/View;)V

    return-void
.end method

.method private isCurrentSearchEngineIsGoogle()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getSearchEngine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "google"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->lambda$onCreateView$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->lambda$scrollListIfRequired$4(I)V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->lambda$new$0(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$handleSelectAllCheckBox$5()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$hideBottomBar$6()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mBottomBarController:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->updateBottomMargin(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mBottomBarController:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->hide()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x3d

    if-ne p2, p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$onCreateView$1(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->getScreenID()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f140cc1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->deleteItemAndExit()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mDeleteBottomBarButton:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->getDeletedString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$onCreateView$2(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->handleSelectAllCheckBox()V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$3;-><init>(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$onCreateView$3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->exitWithoutSaving()V

    return-void
.end method

.method private lambda$scrollListIfRequired$4(I)V
    .locals 3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mSearchEngineRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e2e147b    # 0.17f

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/16 v1, 0xfa

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;I)V

    return-void
.end method

.method public static synthetic m(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->lambda$hideBottomBar$6()V

    return-void
.end method

.method public static synthetic n(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->lambda$handleSelectAllCheckBox$5()V

    return-void
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mBottomBarHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mBottomBarMarginView:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic q(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mCounter:I

    return p0
.end method

.method public static bridge synthetic r(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mDeleteBottomBarButton:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private resetPreSavedList()V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mMaxStringListSize:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mPreSavedList:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mMaxStringListSize:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mPreSavedList:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static bridge synthetic s(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method private scrollListIfRequired()V
    .locals 5

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mHeightToShift:I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mHeightToShift:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mHeightToShift:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;->isAppbarExpanded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;->collapseAppbar()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mRvShiftHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mRvShiftHandler:Landroid/os/Handler;

    new-instance v2, LG6/c;

    const/16 v3, 0xc

    invoke-direct {v2, v0, v3, p0}, LG6/c;-><init>(IILjava/lang/Object;)V

    const-wide/16 v3, 0xfa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private setHeightToShift(Landroid/view/View;)V
    .locals 5

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mCounter:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mSearchEngineRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070149

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    const/4 v3, 0x0

    iput v3, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mHeightToShift:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-le v3, v0, :cond_1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    sub-int/2addr p1, v0

    add-int/2addr p1, v2

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mHeightToShift:I

    goto :goto_0

    :cond_1
    sub-int v4, v0, v2

    if-le v3, v4, :cond_2

    sub-int/2addr v0, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mHeightToShift:I

    :cond_2
    :goto_0
    return-void
.end method

.method private showBottomBar()V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mVisible:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mVisible:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mBottomBarController:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$7;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$7;-><init>(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->show(Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$BottomBarAnimationListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mBottomBarController:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->updateBottomMargin(Z)V

    return-void
.end method

.method public static bridge synthetic t(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mSelectAllLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static bridge synthetic u(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mSelectedList:Ljava/util/ArrayList;

    return-object p0
.end method

.method private updateBottomBarVisibility(Z)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mDeleteMenuItem:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mDeleteTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    const v1, 0x7f14004e

    const v2, 0x7f140434

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mDeleteBottomBarButton:Landroid/widget/LinearLayout;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1402b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->showBottomBar()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070409

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->setHoverBottomPadding(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070408

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->setHoverBottomPadding(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->hideBottomBar()V

    goto :goto_2

    :cond_3
    const-string p0, "DeleteSearchEngineFragment"

    const-string p1, "mDeleteMenuItem null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private updateSelectAllCheckBox()V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;->getItemCount()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mCounter:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mTouchActionDowned:Z

    if-nez v1, :cond_3

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->updateBottomBarVisibility(Z)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    if-eqz v1, :cond_a

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_3
    :goto_0
    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mCounter:I

    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f140a3a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->updateBottomBarVisibility(Z)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f140345

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v4, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mCounter:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mTouchActionDowned:Z

    if-nez v4, :cond_5

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->updateBottomBarVisibility(Z)V

    :cond_5
    :goto_1
    iget v4, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mAppbarState:I

    if-ne v4, v3, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mCountTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mCountTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mCountTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mCounter:I

    if-nez v1, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140801

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f140655

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mCounter:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x7f12005f

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    iget v2, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mCounter:I

    const v3, 0x7f14028a

    const v4, 0x7f140b8f

    const v5, 0x7f14105f

    const-string v6, ", "

    if-nez v2, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mSelectAllLayout:Landroid/widget/LinearLayout;

    invoke-static {v1, v6}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    const v1, 0x7f140357

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_8
    const v7, 0x7f140356

    if-ne v2, v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mSelectAllLayout:Landroid/widget/LinearLayout;

    invoke-static {v1, v6}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f140289

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mCounter:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mSelectAllLayout:Landroid/widget/LinearLayout;

    invoke-static {v1, v6}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mCounter:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_a
    :goto_4
    return-void
.end method

.method public static bridge synthetic v(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mCounter:I

    return-void
.end method

.method public static bridge synthetic w(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mTouchActionDowned:Z

    return-void
.end method

.method public static bridge synthetic x(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->checkBottomBarStatus()V

    return-void
.end method

.method public static bridge synthetic y(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->checkCounterValidation()V

    return-void
.end method

.method public static bridge synthetic z(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->exitWithoutSaving()V

    return-void
.end method


# virtual methods
.method public final getListView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mSearchEngineRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    const-string p0, "563"

    return-object p0
.end method

.method public onBackPressed()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->exitWithoutSaving()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/settings/SettingsAppBarUtil;->getActionModeView(Landroid/app/Activity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mActionModeView:Landroid/widget/LinearLayout;

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$1;-><init>(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mLocaleReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->registerLocaleReceiver()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mActivity:Landroid/app/Activity;

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;->getAppbarLayout()Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lc6/e;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    const p2, 0x7f0e01db

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0b06a6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mSearchEngineRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mListAvailableEngines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mListAvailableEngines:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->checkEngineIsNotDeletable(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "Search engine is not deletable : "

    const-string v7, "DeleteSearchEngineFragment"

    invoke-static {v6, v5, v7}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v5}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->getSearchEngineLabelByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->getSearchEngineFaviconByName(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    new-instance v8, Lcom/sec/android/app/sbrowser/settings/add_search_engine/model/SearchEngineItem;

    invoke-direct {v8, v5, v6, v7}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/model/SearchEngineItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mDeleteEngineListSize:I

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/DeleteSearchEngineAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v4

    invoke-direct {v0, v4, v2}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/DeleteSearchEngineAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;->getItemCount()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mListSize:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mCheckStates:[Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->isCurrentSearchEngineIsGoogle()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mListSize:I

    add-int/2addr v0, v1

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mListSize:I

    add-int/lit8 v0, v0, 0x2

    :goto_2
    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mMaxStringListSize:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mPreSavedList:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->resetCheckBoxStates()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->resetPreSavedList()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mSearchEngineRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->addListItemsDecoration()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mSearchEngineRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mSearchEngineRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mSearchEngineRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mItemTouchListener:Landroidx/recyclerview/widget/N0;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/N0;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mSearchEngineRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/DeleteSearchEngineAdapter;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mAdapterListener:Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/DeleteSearchEngineAdapterListener;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/DeleteSearchEngineAdapter;->setListener(Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/DeleteSearchEngineAdapterListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mCheckStates:[Z

    invoke-virtual {v0, v4}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;->setmCheckStates([Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->setSeslOnMultiSelectedListener()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->setSeslLongPressMultiSelectionListener()V

    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v1, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_6
    const v0, 0x7f0e0921

    invoke-virtual {p1, v0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0b0e4d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mDeleteMenuItem:Landroid/widget/LinearLayout;

    const v0, 0x7f0b047f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mBottomBarMarginView:Landroid/view/View;

    new-instance v2, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mDeleteMenuItem:Landroid/widget/LinearLayout;

    invoke-direct {v2, v4, v0}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;-><init>(Landroid/view/View;Landroid/view/View;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mBottomBarController:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    const v0, 0x7f0b02da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mDeleteBottomBarButton:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/add_search_engine/c;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/c;-><init>(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-nez v0, :cond_7

    return-object p2

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mDeleteBottomBarButton:Landroid/widget/LinearLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f14004e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1402b1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mDeleteBottomBarButton:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const v0, 0x7f0b03e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mDeleteTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    const v2, 0x7f0b01bd

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0e0913

    invoke-virtual {p1, v0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mContainerView:Landroid/view/View;

    const p3, 0x7f0b0aec

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mCountTextView:Landroid/widget/TextView;

    const p3, 0x7f140a3a

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mContainerView:Landroid/view/View;

    const p3, 0x7f0b0b5f

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mSelectAllLayout:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mContainerView:Landroid/view/View;

    const p3, 0x7f0b0540

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mSelectAllLayout:Landroid/widget/LinearLayout;

    new-instance p3, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$2;

    invoke-direct {p3, p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$2;-><init>(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->handleSelectAllCheckBox()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mSelectAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/view/View;->setClickable(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mSelectAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    :cond_8
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    const/4 p3, 0x4

    invoke-virtual {p1, p3}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    new-instance p3, Lcom/sec/android/app/sbrowser/settings/add_search_engine/c;

    const/4 v0, 0x1

    invoke-direct {p3, p0, v0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/c;-><init>(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;I)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget p1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mDeleteEngineListSize:I

    if-ne p1, v1, :cond_9

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mCheckStates:[Z

    aput-boolean v1, p1, v3

    iget p1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mCounter:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mCounter:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->updateSelectAllCheckBox()V

    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    check-cast p1, Lm/n;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lm/n;->getSupportActionBar()Lm/b;

    move-result-object p1

    invoke-virtual {p1, v3}, Lm/b;->q(Z)V

    invoke-virtual {p1, v3}, Lm/b;->n(Z)V

    invoke-virtual {p1, v3}, Lm/b;->r(Z)V

    invoke-virtual {p1, v1}, Lm/b;->p(Z)V

    invoke-virtual {p1}, Lm/b;->t()V

    invoke-virtual {p1}, Lm/b;->u()V

    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/settings/SettingsAppBarUtil;->getToolbarTitle(Landroid/app/Activity;)Landroid/widget/TextView;

    move-result-object p1

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mActionModeView:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_b

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mContainerView:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mActionModeView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mActionModeView:Landroid/widget/LinearLayout;

    const p3, 0x7f0b0af8

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mCancelButton:Landroid/view/View;

    if-eqz p1, :cond_c

    new-instance p3, Lcom/sec/android/app/sbrowser/settings/add_search_engine/c;

    const/4 v0, 0x2

    invoke-direct {p3, p0, v0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/c;-><init>(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;I)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_b
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->exitWithoutSaving()V

    :cond_c
    :goto_3
    return-object p2
.end method

.method public onCtrlAndAKeyPressed()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->handleSelectAllCheckBox()V

    return-void
.end method

.method public onCtrlAndDKeyPressed()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mCounter:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->deleteItemAndExit()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mSearchEngineRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mItemTouchListener:Landroidx/recyclerview/widget/N0;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/N0;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mAdapterListener:Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/DeleteSearchEngineAdapterListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mAdapterListener:Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/DeleteSearchEngineAdapterListener;

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;->setIsInActionMode(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;->getAppbarLayout()Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/material/appbar/AppBarLayout;->removeOnOffsetChangedListener(Lc6/e;)V

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->onDestroy()V

    return-void
.end method

.method public onMultiSelectStopInternal(II)V
    .locals 4

    :goto_0
    const/4 v0, 0x1

    if-gt p1, p2, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mSearchEngineRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mCheckStates:[Z

    aget-boolean v3, v2, p1

    xor-int/2addr v3, v0

    aput-boolean v3, v2, p1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    if-eqz v1, :cond_1

    const v2, 0x7f0b0234

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    xor-int/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mCheckStates:[Z

    aget-boolean v3, v3, p1

    invoke-virtual {v2, v1, p1, v3}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;->setBackgroundResourceForItems(Landroid/view/View;IZ)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mSelectedList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mSelectedList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mCounter:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mCounter:I

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mSelectedList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mCounter:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mCounter:I

    :cond_1
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->checkCounterValidation()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->updateSelectAllCheckBox()V

    iget p1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mCounter:I

    if-lez p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->updateBottomBarVisibility(Z)V

    return-void
.end method

.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->seslGetAppBarState()Lc6/f;

    move-result-object p1

    iget p1, p1, Lc6/f;->a:I

    iget p2, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mAppbarState:I

    if-eq p1, p2, :cond_0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mAppbarState:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->updateSelectAllCheckBox()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->exitWithoutSaving()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/settings/FragmentCustom;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;->setIsInActionMode(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mDeleteTextView:Landroid/widget/TextView;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/settings/FragmentCommonHelper;->setDeleteTextBackground(Landroid/app/Activity;Landroid/widget/TextView;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->mActivity:Landroid/app/Activity;

    const v0, 0x7f140a3a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public setHoverBottomPadding(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mSearchEngineRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetHoverBottomPadding(I)V

    return-void
.end method

.method public setSeslLongPressMultiSelectionListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mSearchEngineRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$5;-><init>(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetLongPressMultiSelectionListener(Landroidx/recyclerview/widget/X0;)V

    return-void
.end method
