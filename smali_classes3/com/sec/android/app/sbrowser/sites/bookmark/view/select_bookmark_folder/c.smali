.class public final synthetic Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView$1;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView$1;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/c;->a:Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView$1;

    iput p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/c;->b:I

    iput p3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/c;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/c;->c:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/c;->a:Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView$1;

    iget p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/c;->b:I

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView$1;->a(Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderView$1;II)V

    return-void
.end method
