.class Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;->sortBy(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/data/DetailHistoryDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/data/DetailHistoryDTO;Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/data/DetailHistoryDTO;)I
    .locals 1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/data/DetailHistoryDTO;->getBlockedCount()I

    move-result p0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/data/DetailHistoryDTO;->getBlockedCount()I

    move-result v0

    if-le p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/data/DetailHistoryDTO;->getBlockedCount()I

    move-result p0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/data/DetailHistoryDTO;->getBlockedCount()I

    move-result p1

    if-ge p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/data/DetailHistoryDTO;

    check-cast p2, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/data/DetailHistoryDTO;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel$1;->compare(Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/data/DetailHistoryDTO;Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/data/DetailHistoryDTO;)I

    move-result p0

    return p0
.end method
