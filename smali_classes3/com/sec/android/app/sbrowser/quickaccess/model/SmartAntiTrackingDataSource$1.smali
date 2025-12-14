.class Lcom/sec/android/app/sbrowser/quickaccess/model/SmartAntiTrackingDataSource$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsHelper$AntiTrackingStatsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/model/SmartAntiTrackingDataSource;->fetch(Lcom/sec/android/app/sbrowser/quickaccess/model/SmartAntiTrackingDataSource$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/SmartAntiTrackingDataSource;

.field final synthetic val$callback:Lcom/sec/android/app/sbrowser/quickaccess/model/SmartAntiTrackingDataSource$Callback;

.field final synthetic val$satLevel:I

.field final synthetic val$today:J


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/model/SmartAntiTrackingDataSource;IJLcom/sec/android/app/sbrowser/quickaccess/model/SmartAntiTrackingDataSource$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SmartAntiTrackingDataSource$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/SmartAntiTrackingDataSource;

    iput p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SmartAntiTrackingDataSource$1;->val$satLevel:I

    iput-wide p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SmartAntiTrackingDataSource$1;->val$today:J

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SmartAntiTrackingDataSource$1;->val$callback:Lcom/sec/android/app/sbrowser/quickaccess/model/SmartAntiTrackingDataSource$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCountsAvailable([I)V
    .locals 0

    return-void
.end method

.method public onStatsAvailable(Ljava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;",
            ">;Z)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    move v0, p2

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;

    iget v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SmartAntiTrackingDataSource$1;->val$satLevel:I

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingUtils;->shouldConsiderEntryForStatsUI(Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;->getTimestamp()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SmartAntiTrackingDataSource$1;->val$today:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    invoke-virtual {v1}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;->getCount()I

    move-result v2

    add-int/2addr p2, v2

    :cond_1
    invoke-virtual {v1}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;->getCount()I

    move-result v1

    add-int/2addr v1, v0

    move v0, v1

    goto :goto_0

    :cond_2
    const-string p1, "today/week ["

    const-string v1, "/"

    const-string v2, "]"

    invoke-static {p2, v0, p1, v1, v2}, Landroidx/recyclerview/widget/P;->d(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "SmartAntiTrackingDataSource"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SmartAntiTrackingDataSource$1;->val$callback:Lcom/sec/android/app/sbrowser/quickaccess/model/SmartAntiTrackingDataSource$Callback;

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardResponse;

    invoke-direct {p1, p2, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardResponse;-><init>(II)V

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/SmartAntiTrackingDataSource$Callback;->onResponse(Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardResponse;)V

    return-void
.end method
