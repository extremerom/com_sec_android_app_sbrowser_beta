.class Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->c(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;)Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation$BookmarkFolderNavigationHandler;

    move-result-object p0

    return-object p0
.end method

.method public isActivityDestroyed()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->a(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->b(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
