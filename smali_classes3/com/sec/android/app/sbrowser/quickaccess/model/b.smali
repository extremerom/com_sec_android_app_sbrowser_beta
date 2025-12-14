.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/model/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository$ItemsListener;
.implements Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$OnIconFetchListener;
.implements Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites$TerraceMostVisitedModelListener;
.implements Lcom/sec/android/app/sbrowser/common/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/b;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/b;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessAddWebRepository$Companion;->a(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessAddWebRepository;

    move-result-object p0

    return-object p0
.end method

.method public notifyMostVisitedCompleted(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesTerraceDataSource;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesTerraceDataSource;->a(Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesTerraceDataSource;Z)V

    return-void
.end method

.method public onChanged(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/b;->b:Ljava/lang/Object;

    check-cast p0, LPc/y;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository$itemsFlow$1;->f(LPc/y;Ljava/util/List;)V

    return-void
.end method

.method public onFetchFinished(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/b;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/b;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->c(Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;->a(Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
