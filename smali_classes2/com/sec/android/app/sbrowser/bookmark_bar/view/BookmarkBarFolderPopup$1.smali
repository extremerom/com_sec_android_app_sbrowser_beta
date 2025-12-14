.class Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup$1;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    const-string v0, "BookmarkBarFolderPopup"

    const-string v1, "onDismiss"

    invoke-static {v0, v1}, LK8/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup$1;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->b(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;)V

    return-void
.end method
