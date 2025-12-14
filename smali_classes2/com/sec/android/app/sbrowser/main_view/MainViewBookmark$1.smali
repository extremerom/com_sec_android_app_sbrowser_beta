.class Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->i(Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;)Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark$MVBookmarkHandler;

    move-result-object p0

    return-object p0
.end method

.method public isActivityDestroyed()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->h(Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

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
