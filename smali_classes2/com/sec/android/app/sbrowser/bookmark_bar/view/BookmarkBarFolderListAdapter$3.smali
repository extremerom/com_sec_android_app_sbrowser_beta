.class Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

.field final synthetic val$position:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$3;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;

    iput p2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$3;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;

    iget p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$3;->val$position:I

    invoke-virtual {v0, p1, p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->showPopupMenu(Landroid/view/View;I)V

    const/4 p0, 0x1

    return p0
.end method
