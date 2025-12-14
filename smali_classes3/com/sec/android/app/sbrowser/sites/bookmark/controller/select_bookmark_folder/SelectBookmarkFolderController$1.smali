.class Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil$BookmarkListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUpdatedList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->d(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
