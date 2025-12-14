.class Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil$BookmarkListListener;


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController$2;->this$0:Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUpdatedList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController$2;->this$0:Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->e(Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController$2;->this$0:Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->f(Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController$2;->this$0:Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->c(Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController$2;->this$0:Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->b(Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
