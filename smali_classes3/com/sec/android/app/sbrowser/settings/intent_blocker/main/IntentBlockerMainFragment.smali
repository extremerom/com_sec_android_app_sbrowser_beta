.class public Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;
.super Lcom/sec/android/app/sbrowser/common/settings/FragmentCustom;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/settings/KeyPressCallback;


# instance fields
.field private mAdapter:Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;

.field private mDescription:Landroid/widget/TextView;

.field private mIntentBlockerModel:Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainModel;

.field private mIsItemClicked:Z

.field private mItemLayout:Landroid/widget/LinearLayout;

.field private mListView:Landroidx/recyclerview/widget/RecyclerView;

.field private mNoItemLayout:Landroidx/core/widget/NestedScrollView;

.field mObserver:Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler$Observer;

.field private mPackageNameForGuide:Ljava/lang/String;

.field private mShouldShowAffordanceGuide:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/settings/FragmentCustom;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/c;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/c;-><init>(Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->mObserver:Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler$Observer;

    return-void
.end method

.method private addOptionMenu()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment$2;-><init>(Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/J;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroidx/activity/p;->addMenuProvider(Lf1/p;Landroidx/lifecycle/J;)V

    return-void
.end method

.method private getActionDownMotionEvent()Landroid/view/MotionEvent;
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x64

    add-long/2addr v2, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p0

    return-object p0
.end method

.method private getActionUpMotionEvent()Landroid/view/MotionEvent;
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x64

    add-long/2addr v2, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->lambda$updateListData$0(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->updateListData()V

    return-void
.end method

.method private initAffordanceGuide()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->isLaunchedFromHistory(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    const-string v1, "sbrowser.settings.show_fragment_args"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    const-string v1, "extra_pkg_name"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    :cond_4
    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->mPackageNameForGuide:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->mShouldShowAffordanceGuide:Z

    return-void
.end method

.method private isLaunchedFromHistory(Landroid/content/Intent;)Z
    .locals 0
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p0

    const/high16 p1, 0x100000

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isLaunchedFromNotification(Landroid/app/Activity;)Z
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->lambda$showAffordanceGuideIfNeeded$1()V

    return-void
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;)Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->mIsItemClicked:Z

    return p0
.end method

.method private synthetic lambda$showAffordanceGuideIfNeeded$1()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->mPackageNameForGuide:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;->getItemId(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForItemId(J)Landroidx/recyclerview/widget/h1;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->getActionDownMotionEvent()Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder;->dispatchFakeTouchEvent(Landroid/view/MotionEvent;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->getActionUpMotionEvent()Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder;->dispatchFakeTouchEvent(Landroid/view/MotionEvent;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->mShouldShowAffordanceGuide:Z

    return-void
.end method

.method private synthetic lambda$updateListData$0(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;->setListData(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->updateLayoutVisible(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->showAffordanceGuideIfNeeded()V

    :cond_0
    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->mIsItemClicked:Z

    return-void
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->openHistory(Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;)V

    return-void
.end method

.method private openHistory(Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;)V
    .locals 4
    .param p1    # Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-class v1, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "extra_pkg_name"

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->isLaunchedFromNotification(Landroid/app/Activity;)Z

    move-result p0

    xor-int/lit8 p1, p0, 0x1

    const-string v3, "extra_is_popover"

    invoke-virtual {v2, v3, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p1, Landroid/content/Intent;

    const-class v3, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    invoke-direct {p1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "sbrowser.settings.show_fragment"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "sbrowser.settings.show_fragment_args"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    if-nez p0, :cond_1

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivity(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private showAffordanceGuideIfNeeded()V
    .locals 4

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->mShouldShowAffordanceGuide:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/d;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/d;-><init>(Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private updateLayoutVisible(Z)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->mNoItemLayout:Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->mItemLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->mItemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->mDescription:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->mNoItemLayout:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->mDescription:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateListData()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->mIntentBlockerModel:Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainModel;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/b;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/b;-><init>(Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainModel;->getListData(Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainModel$Listener;)V

    return-void
.end method


# virtual methods
.method public getNavigateUpID()Ljava/lang/String;
    .locals 1

    const v0, 0x7f140c5b

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    const-string p0, "539"

    return-object p0
.end method

.method public onBackPressed()V
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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainModel;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainModel;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->mIntentBlockerModel:Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainModel;

    invoke-static {}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->getInstance()Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->mObserver:Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler$Observer;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->addObserver(Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler$Observer;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const p3, 0x7f0e046a

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0b062b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    const p2, 0x7f0b062a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->mItemLayout:Landroid/widget/LinearLayout;

    const p2, 0x7f0b063a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/core/widget/NestedScrollView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->mNoItemLayout:Landroidx/core/widget/NestedScrollView;

    const p2, 0x7f0b0624

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->mDescription:Landroid/widget/TextView;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->mDescription:Landroid/widget/TextView;

    const p3, 0x7f140636

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    sget p2, Lcom/sec/sbrowser/spl/util/PlatformInfo;->ONEUI_VERSION:I

    const p3, 0xc350

    if-ge p2, p3, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->mDescription:Landroid/widget/TextView;

    const p3, 0x7f140635

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->initAffordanceGuide()V

    return-object p1
.end method

.method public onCtrlAndMKeyPressed()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/settings/SettingsAppBarUtil;->getToolbar(Landroid/app/Activity;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v3, :cond_3

    check-cast v2, Landroidx/appcompat/widget/ActionMenuView;

    iget-object p0, v2, Landroidx/appcompat/widget/ActionMenuView;->t:Lt/m;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lt/m;->l()Z

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->getInstance()Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->mObserver:Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler$Observer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->removeObserver(Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler$Observer;)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->mIsItemClicked:Z

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/settings/FragmentCustom;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    const v0, 0x7f140643

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f071354

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment$1;-><init>(Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;->setListener(Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$Listener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/u0;->setHasStableIds(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFastScrollerEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFillBottomEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopBottomPadding(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    xor-int/2addr p2, v1

    invoke-virtual {p1, v1, p2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(ZZ)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/sec/android/app/sbrowser/sesl_common/SeslUtil;->getRoundedCornerColor(Landroid/content/Context;Z)I

    move-result p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/view/RoundedItemDecoration;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/sec/android/app/sbrowser/common/view/RoundedItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/F0;)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->updateListData()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->getInstance()Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->updateDrawableIconsAsync()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->getInstance()Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->deleteOldHistory()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->addOptionMenu()V

    return-void
.end method
