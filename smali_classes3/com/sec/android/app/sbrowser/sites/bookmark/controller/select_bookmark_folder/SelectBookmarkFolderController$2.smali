.class Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/sites/bookmark/model/select_bookmark_folder/SelectBookmarkFolderViewDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController$2;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController$2;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->i(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;)Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController$SelectBookmarkHandler;

    move-result-object p0

    return-object p0
.end method

.method public isActivityDestroyed()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController$2;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->b(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;->FINISHED:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
