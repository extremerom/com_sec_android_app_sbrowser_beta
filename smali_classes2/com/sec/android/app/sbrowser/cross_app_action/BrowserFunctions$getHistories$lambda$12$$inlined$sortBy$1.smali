.class public final Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$lambda$12$$inlined$sortBy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions;->getHistories(Lz4/a;Lcom/google/android/appfunctions/schema/common/v1/browser/GetHistoriesParams;Lib/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $endTime$inlined:Ltb/v;


# direct methods
.method public constructor <init>(Ltb/v;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$lambda$12$$inlined$sortBy$1;->$endTime$inlined:Ltb/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    check-cast p1, Lcom/sec/android/app/sbrowser/common/constants/sites/CrossAppBookmarkItem;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$lambda$12$$inlined$sortBy$1;->$endTime$inlined:Ltb/v;

    iget-wide v0, v0, Ltb/v;->a:J

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/CrossAppBookmarkItem;->getModifiedTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    check-cast p2, Lcom/sec/android/app/sbrowser/common/constants/sites/CrossAppBookmarkItem;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$lambda$12$$inlined$sortBy$1;->$endTime$inlined:Ltb/v;

    iget-wide v0, p0, Ltb/v;->a:J

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/constants/sites/CrossAppBookmarkItem;->getModifiedTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p1, p0}, LG5/A3;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0
.end method
