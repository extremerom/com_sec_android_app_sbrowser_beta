.class Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks;->createSyncBookmarkFolderIfNeeded(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$6;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$6;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncDbUtility;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncDbUtility;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->isAccountsLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->SAMSUNG:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->getNumVal()J

    move-result-wide v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$6;->val$activity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks;->hasAccountFolder(JLandroid/content/ContentResolver;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "Bookmarks"

    const-string v1, "create Samsung account folder!!"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncDbUtility;->createParentFolders(I)V

    :cond_0
    return-void
.end method
