.class Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->a(Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;->FINISHED:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController$4;->$SwitchMap$com$sec$android$app$sbrowser$common$constants$sites$BookmarkConstants$Messages:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;

    invoke-static {p0, p2}, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->g(Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
