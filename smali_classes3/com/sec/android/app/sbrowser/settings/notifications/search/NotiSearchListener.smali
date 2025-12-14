.class public Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mActivity:Landroid/app/Activity;

.field private final mDragList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFirstLongPressIndex:I

.field mNotificationBaseUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

.field mNotificationSearchBaseUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

.field private mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mSPenSelectionEndIndex:I

.field private mSPenSelectionStartIndex:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;Landroidx/recyclerview/widget/RecyclerView;Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->mIsFirstLongPressIndex:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->mDragList:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$3;-><init>(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->mNotificationSearchBaseUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->mNotificationBaseUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->mDragList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->mIsFirstLongPressIndex:I

    return p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->mSPenSelectionEndIndex:I

    return p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->mSPenSelectionStartIndex:I

    return p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->mIsFirstLongPressIndex:I

    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->mSPenSelectionEndIndex:I

    return-void
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->mSPenSelectionStartIndex:I

    return-void
.end method

.method private getAdapter()Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->mNotificationBaseUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;->getAdapter()Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;

    move-result-object p0

    return-object p0
.end method

.method private getSearchData()Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->mNotificationBaseUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;->getSearchData()Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;)Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->getAdapter()Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;)Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->getSearchData()Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;

    move-result-object p0

    return-object p0
.end method

.method private isShowingActionMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->mNotificationBaseUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;->isShowingActionMode()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->isShowingActionMode()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getOnLongClickListener()Landroid/view/View$OnLongClickListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method public setIsFirstLongPressIndex(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->mIsFirstLongPressIndex:I

    return-void
.end method

.method public setSPenMultiSelectionListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$1;-><init>(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetOnMultiSelectedListener(Landroidx/recyclerview/widget/Z0;)V

    return-void
.end method

.method public setSeslLongPressMultiSelectionListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener$2;-><init>(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetLongPressMultiSelectionListener(Landroidx/recyclerview/widget/X0;)V

    return-void
.end method
