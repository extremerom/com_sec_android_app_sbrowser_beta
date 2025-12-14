.class public final synthetic Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController$3;

.field public final synthetic b:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController$3;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/a;->a:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController$3;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/a;->b:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/a;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/a;->c:Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/a;->a:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController$3;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/a;->b:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController$3;->a(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController$3;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V

    return-void
.end method
