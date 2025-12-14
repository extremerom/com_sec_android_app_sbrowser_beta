.class public Lcom/sec/android/app/sbrowser/databinding/SearchBarBindingImpl;
.super Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/j;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final mCallback1:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mCallback2:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mDirtyFlags:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Landroidx/databinding/j;

    invoke-direct {v0}, Landroidx/databinding/j;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/databinding/SearchBarBindingImpl;->sIncludes:Landroidx/databinding/j;

    const-string v1, "search_engine_button"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    filled-new-array {v2}, [I

    move-result-object v2

    const v3, 0x7f0e0812

    filled-new-array {v3}, [I

    move-result-object v3

    iget-object v4, v0, Landroidx/databinding/j;->a:[[Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    iget-object v1, v0, Landroidx/databinding/j;->b:[[I

    aput-object v2, v1, v5

    iget-object v0, v0, Landroidx/databinding/j;->c:[[I

    aput-object v3, v0, v5

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/databinding/SearchBarBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0b0a9e

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0b0a9d

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/e;Landroid/view/View;)V
    .locals 3
    .param p1    # Landroidx/databinding/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/sec/android/app/sbrowser/databinding/SearchBarBindingImpl;->sIncludes:Landroidx/databinding/j;

    sget-object v1, Lcom/sec/android/app/sbrowser/databinding/SearchBarBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x6

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/k;->mapBindings(Landroidx/databinding/e;Landroid/view/View;ILandroidx/databinding/j;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/databinding/SearchBarBindingImpl;-><init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 12

    const/4 v0, 0x2

    aget-object v1, p3, v0

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageButton;

    const/4 v1, 0x0

    aget-object v1, p3, v1

    move-object v7, v1

    check-cast v7, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;

    const/4 v1, 0x3

    aget-object v1, p3, v1

    move-object v8, v1

    check-cast v8, Lcom/sec/android/app/sbrowser/databinding/SearchEngineButtonBinding;

    const/4 v1, 0x5

    aget-object v1, p3, v1

    move-object v9, v1

    check-cast v9, Lcom/sec/android/app/sbrowser/search_widget/SearchBarEditText;

    const/4 v1, 0x4

    aget-object v1, p3, v1

    move-object v10, v1

    check-cast v10, Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    aget-object p3, p3, v1

    move-object v11, p3

    check-cast v11, Landroid/widget/ImageButton;

    const/4 v5, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageButton;Lcom/sec/android/app/sbrowser/search_widget/SearchBar;Lcom/sec/android/app/sbrowser/databinding/SearchEngineButtonBinding;Lcom/sec/android/app/sbrowser/search_widget/SearchBarEditText;Landroid/widget/LinearLayout;Landroid/widget/ImageButton;)V

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/sec/android/app/sbrowser/databinding/SearchBarBindingImpl;->mDirtyFlags:J

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;->clearButton:Landroid/widget/ImageButton;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;->searchBar:Lcom/sec/android/app/sbrowser/search_widget/SearchBar;

    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;->searchEngineLayout:Lcom/sec/android/app/sbrowser/databinding/SearchEngineButtonBinding;

    invoke-virtual {p0, p1}, Landroidx/databinding/k;->setContainedBinding(Landroidx/databinding/k;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;->voiceButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Landroidx/databinding/k;->setRootTag(Landroid/view/View;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v1}, Lcom/sec/android/app/sbrowser/generated/callback/OnClickListener;-><init>(Lcom/sec/android/app/sbrowser/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/databinding/SearchBarBindingImpl;->mCallback1:Landroid/view/View$OnClickListener;

    new-instance p1, Lcom/sec/android/app/sbrowser/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v0}, Lcom/sec/android/app/sbrowser/generated/callback/OnClickListener;-><init>(Lcom/sec/android/app/sbrowser/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/databinding/SearchBarBindingImpl;->mCallback2:Landroid/view/View$OnClickListener;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/databinding/SearchBarBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 0

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;->mSearchBarBinding:Lcom/sec/android/app/sbrowser/search_widget/SearchBar;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->onClearButtonClick()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;->mSearchBarBinding:Lcom/sec/android/app/sbrowser/search_widget/SearchBar;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->onVoiceButtonClick()V

    :cond_2
    :goto_0
    return-void
.end method

.method public executeBindings()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/databinding/SearchBarBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/sbrowser/databinding/SearchBarBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;->clearButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/databinding/SearchBarBindingImpl;->mCallback2:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;->voiceButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/databinding/SearchBarBindingImpl;->mCallback1:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;->searchEngineLayout:Lcom/sec/android/app/sbrowser/databinding/SearchEngineButtonBinding;

    invoke-static {p0}, Landroidx/databinding/k;->executeBindingsOn(Landroidx/databinding/k;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/databinding/SearchBarBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;->searchEngineLayout:Lcom/sec/android/app/sbrowser/databinding/SearchEngineButtonBinding;

    invoke-virtual {p0}, Landroidx/databinding/k;->hasPendingBindings()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x4

    :try_start_0
    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/databinding/SearchBarBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;->searchEngineLayout:Lcom/sec/android/app/sbrowser/databinding/SearchEngineButtonBinding;

    invoke-virtual {v0}, Landroidx/databinding/k;->invalidateAll()V

    invoke-virtual {p0}, Landroidx/databinding/k;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setSearchBarBinding(Lcom/sec/android/app/sbrowser/search_widget/SearchBar;)V
    .locals 4
    .param p1    # Lcom/sec/android/app/sbrowser/search_widget/SearchBar;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;->mSearchBarBinding:Lcom/sec/android/app/sbrowser/search_widget/SearchBar;

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/databinding/SearchBarBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/databinding/SearchBarBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroidx/databinding/a;->notifyPropertyChanged(I)V

    invoke-super {p0}, Landroidx/databinding/k;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
