.class Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkViewAdapter$SelectBookmarkAdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView$1;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView$1;->lambda$onItemClick$0(II)V

    return-void
.end method

.method private synthetic lambda$onItemClick$0(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;->i(Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    sub-int/2addr p1, p2

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;->i(Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentParentId()J
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;->h(Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUpdatedStrings(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;->j(Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/select_bookmark_folder/SelectBookmarkViewListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/select_bookmark_folder/SelectBookmarkViewListener;->getUpdatedStrings(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;->j(Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/select_bookmark_folder/SelectBookmarkViewListener;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;->j(Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/select_bookmark_folder/SelectBookmarkViewListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/select_bookmark_folder/SelectBookmarkViewListener;->isFolderDialogActive()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;->g(Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;)Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkViewAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkViewAdapter;->getSelectedItemPosition()I

    move-result p1

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;->g(Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;)Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkViewAdapter;

    move-result-object p4

    if-eqz p1, :cond_3

    if-ge p3, p1, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 p5, p3, -0x1

    goto :goto_1

    :cond_3
    :goto_0
    move p5, p3

    :goto_1
    invoke-virtual {p4, p5}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkViewAdapter;->getItem(I)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p4

    if-nez p4, :cond_4

    return-void

    :cond_4
    if-eqz p1, :cond_6

    if-ne p3, p1, :cond_6

    invoke-virtual {p4}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide p1

    sget-object p3, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->MY_DEVICE:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->getNumVal()J

    move-result-wide p3

    cmp-long p1, p1, p3

    if-nez p1, :cond_5

    return-void

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;->j(Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/select_bookmark_folder/SelectBookmarkViewListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/select_bookmark_folder/SelectBookmarkViewListener;->createFolder()V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;->onFolderClick(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;->onFolderSelect(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;->g(Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;)Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkViewAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkViewAdapter;->getSelectedItemPosition()I

    move-result p1

    if-lt p1, p3, :cond_7

    const/4 p2, 0x0

    :cond_7
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p4, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/c;

    invoke-direct {p4, p0, p3, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/c;-><init>(Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView$1;II)V

    const-wide/16 p2, 0x46

    invoke-virtual {p1, p4, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;->f(Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;)Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p0

    if-nez p0, :cond_8

    const-string p0, "303"

    const-string p1, "3024"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public onSaveButtonStateChange(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;->k(Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isShowButtonShapeEnabled()Z

    move-result v0

    const v1, -0x777778

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;->k(Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;->f(Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f06015c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;->k(Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;->f(Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0609d1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;->f(Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;->k(Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;->f(Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0603d6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;->l(Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;->m(Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView;)V

    return-void
.end method
