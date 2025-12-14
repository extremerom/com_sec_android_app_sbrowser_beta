.class Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient$ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->requestItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$3;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$3;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDefaultIconUpdater;Ljava/util/List;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$3;->lambda$onSuccess$0(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDefaultIconUpdater;Ljava/util/List;Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic lambda$onSuccess$0(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDefaultIconUpdater;Ljava/util/List;Ljava/lang/Boolean;)V
    .locals 1

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$3;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->j(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;)Landroid/content/Context;

    move-result-object p3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$3;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    new-instance p2, Lcom/sec/android/app/sbrowser/quickaccess/model/x;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/x;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;)V

    invoke-virtual {p1, p3, v0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDefaultIconUpdater;->updateIcons(Landroid/content/Context;Ljava/util/ArrayList;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDefaultIconUpdater$FetchListener;)V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$3;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->migrateUrlsIfNeeded()V

    return-void
.end method

.method public onSuccess(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDefaultIconUpdater;Ljava/util/List;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDefaultIconUpdater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDefaultIconUpdater;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$3;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    invoke-static {v0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->k(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;Ljava/util/List;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$3;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/A;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/A;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$3;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDefaultIconUpdater;Ljava/util/List;)V

    invoke-virtual {v0, p2, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->applyServerItems(Ljava/util/List;Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$3;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->migrateUrlsIfNeeded()V

    return-void
.end method
