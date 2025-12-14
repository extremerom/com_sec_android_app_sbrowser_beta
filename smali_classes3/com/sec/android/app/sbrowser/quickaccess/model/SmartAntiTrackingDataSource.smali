.class public Lcom/sec/android/app/sbrowser/quickaccess/model/SmartAntiTrackingDataSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/model/SmartAntiTrackingDataSource$Callback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fetch(Lcom/sec/android/app/sbrowser/quickaccess/model/SmartAntiTrackingDataSource$Callback;)V
    .locals 13

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;-><init>(Ljava/util/Calendar;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;->getTimeInMillis()J

    move-result-wide v5

    const/4 v1, -0x6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;->nDaysLater(I)Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;->getTimeInMillis()J

    move-result-wide v8

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;->nDaysLater(I)Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;->getTimeInMillis()J

    move-result-wide v10

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getAntiTrackingLevel(Z)I

    move-result v4

    new-instance v0, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsHelper;

    invoke-direct {v0}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsHelper;-><init>()V

    new-instance v12, Lcom/sec/android/app/sbrowser/quickaccess/model/SmartAntiTrackingDataSource$1;

    move-object v2, v12

    move-object v3, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/quickaccess/model/SmartAntiTrackingDataSource$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/SmartAntiTrackingDataSource;IJLcom/sec/android/app/sbrowser/quickaccess/model/SmartAntiTrackingDataSource$Callback;)V

    move-object v7, v0

    invoke-virtual/range {v7 .. v12}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsHelper;->getAntiTrackingStats(JJLcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsHelper$AntiTrackingStatsCallback;)V

    return-void
.end method
