.class Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->initPopupView()V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup$2;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup$2;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;

    invoke-static {p0, p3}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->c(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;I)V

    return-void
.end method
