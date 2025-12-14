.class Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->show(Ljava/lang/Long;ILandroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup$4;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup$4;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->a(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;)Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->showPopupMenu(Landroid/view/View;I)V

    const/4 p0, 0x1

    return p0
.end method
