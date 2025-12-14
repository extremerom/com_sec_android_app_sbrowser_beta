.class public Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAdapter:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;

.field private mBaseListView:Landroidx/recyclerview/widget/RecyclerView;

.field private mBaseUi:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;

.field private mDragEndIndex:I

.field private mDragStartIndex:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->mBaseUi:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;)Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->mAdapter:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->mBaseListView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;)Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->mBaseUi:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->mDragEndIndex:I

    return p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->mDragStartIndex:I

    return p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->mDragEndIndex:I

    return-void
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->mDragStartIndex:I

    return-void
.end method

.method private getChildAt(II)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->mBaseListView:Landroidx/recyclerview/widget/RecyclerView;

    int-to-float p1, p1

    int-to-float v1, p2

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    if-gtz p2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->mBaseListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslFindNearChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;II)Landroid/view/View;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->getChildAt(II)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->mBaseUi:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;->getAdapter()Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->mAdapter:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->mBaseUi:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->mBaseListView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public setSeslLongPressMultiSelectionListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->mBaseListView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener$2;-><init>(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetLongPressMultiSelectionListener(Landroidx/recyclerview/widget/X0;)V

    return-void
.end method

.method public setSeslOnMultiSelectedListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;->mBaseListView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener$1;-><init>(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySelectionListener;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetOnMultiSelectedListener(Landroidx/recyclerview/widget/Z0;)V

    return-void
.end method
