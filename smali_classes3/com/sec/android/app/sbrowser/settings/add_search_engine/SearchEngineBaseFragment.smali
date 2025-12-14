.class public abstract Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;
.super Lcom/sec/android/app/sbrowser/common/settings/FragmentCustom;
.source "SourceFile"


# instance fields
.field protected mAdapter:Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;

.field protected mCheckStates:[Z

.field protected mDragEndIndex:I

.field protected mDragStartIndex:I

.field protected mHelper:Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;

.field protected mListAvailableEngines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mListSize:I

.field protected mLocaleReceiver:Landroid/content/BroadcastReceiver;

.field protected mSearchEngineRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/settings/FragmentCustom;-><init>()V

    return-void
.end method


# virtual methods
.method public addListItemsDecoration()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/sesl_common/SeslUtil;->getRoundedCornerColor(Landroid/content/Context;Z)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mSearchEngineRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/sec/android/app/sbrowser/common/view/RoundedItemDecoration;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/sbrowser/common/view/RoundedItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/F0;)V

    return-void
.end method

.method public getChildAt(II)Landroid/view/View;
    .locals 0

    if-lez p2, :cond_1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mSearchEngineRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mSearchEngineRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->seslFindNearChildViewUnder(FF)Landroid/view/View;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public getSearchEngineFaviconByName(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mHelper:Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;->getSearchEngineFavicon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getSearchEngineLabelByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SearchEngineBaseFragment"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;->getLabel()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mHelper:Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;->getListAvailableEngines()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mListAvailableEngines:Ljava/util/ArrayList;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->unregisterLocaleReceiver()V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public abstract onMultiSelectStopInternal(II)V
.end method

.method public registerLocaleReceiver()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mLocaleReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/common/device/ContextUtils;->registerExportedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public resetCheckBoxStates()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mListSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mCheckStates:[Z

    aput-boolean v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setSeslOnMultiSelectedListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mSearchEngineRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment$1;-><init>(Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetOnMultiSelectedListener(Landroidx/recyclerview/widget/Z0;)V

    return-void
.end method

.method public unregisterLocaleReceiver()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mLocaleReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "SearchEngineBaseFragment"

    const-string v0, "Receivers not registered"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public updateContentDescription(Landroid/view/View;I)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mCheckStates:[Z

    aget-boolean v1, v1, p2

    if-eqz v1, :cond_1

    const v1, 0x7f14067d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const v1, 0x7f14067e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, ", "

    invoke-static {v1, v2}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;->getLabelByPosition(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p0, 0x7f140b8f

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
