.class Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController$1;->this$0:Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController$1;->this$0:Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->d(Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;)Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController$SitesSearchHandler;

    move-result-object p0

    return-object p0
.end method

.method public isActivityDestroyed()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController$1;->this$0:Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->a(Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

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
