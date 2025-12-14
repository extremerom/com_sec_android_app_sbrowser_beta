.class public final synthetic Lcom/sec/android/app/sbrowser/tab_sync/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;

    check-cast p2, Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView$TabSyncData;->a(Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;)I

    move-result p0

    return p0
.end method
