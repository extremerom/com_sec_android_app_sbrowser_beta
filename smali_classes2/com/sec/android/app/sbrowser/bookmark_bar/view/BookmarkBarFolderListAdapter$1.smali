.class Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;

.field final synthetic val$item:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

.field final synthetic val$position:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;ILcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;

    iput p2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$1;->val$position:I

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$1;->val$item:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->a(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    iget v3, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$1;->val$position:I

    const-wide/16 v4, -0x1

    const/4 v1, 0x0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$1;->val$item:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object p2

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->UPPER:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-eq p2, v0, :cond_2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$1;->val$item:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object p2

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->ADD_TO_BOOKMARK_BAR:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-eq p2, v0, :cond_2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$1;->val$item:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object p2

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->EDIT_BOOKMARK_BAR:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-eq p2, v0, :cond_2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;

    iget p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$1;->val$position:I

    invoke-virtual {p2, p1, p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->showPopupMenu(Landroid/view/View;I)V

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
