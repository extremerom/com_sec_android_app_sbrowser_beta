.class Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$2;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;

    iput p2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$2;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->a(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    iget v4, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$2;->val$position:I

    const-wide/16 v5, -0x1

    const/4 v2, 0x0

    move-object v3, p1

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
