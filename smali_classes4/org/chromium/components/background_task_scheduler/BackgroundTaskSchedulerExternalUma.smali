.class public abstract Lorg/chromium/components/background_task_scheduler/BackgroundTaskSchedulerExternalUma;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field public static final BACKGROUND_AUXILIARY_SEARCH_DONATE:I = 0x21

.field public static final BACKGROUND_SAFETY_HUB:I = 0x20

.field public static final BACKGROUND_TASK_ATTRIBUTION_PROVIDER_FLUSH:I = 0x1c

.field public static final BACKGROUND_TASK_CHROME_MINIDUMP:I = 0x5

.field public static final BACKGROUND_TASK_COMPONENT_UPDATE:I = 0xf

.field public static final BACKGROUND_TASK_COUNT:I = 0x22

.field public static final BACKGROUND_TASK_DEPRECATED_DOWNLOAD_RESUMPTION:I = 0xd

.field public static final BACKGROUND_TASK_DOWNLOAD_AUTO_RESUMPTION:I = 0x12

.field public static final BACKGROUND_TASK_DOWNLOAD_AUTO_RESUMPTION_ANY_NETWORK:I = 0x1e

.field public static final BACKGROUND_TASK_DOWNLOAD_AUTO_RESUMPTION_UNMETERED:I = 0x1d

.field public static final BACKGROUND_TASK_DOWNLOAD_CLEANUP:I = 0x9

.field public static final BACKGROUND_TASK_DOWNLOAD_LATER:I = 0x19

.field public static final BACKGROUND_TASK_DOWNLOAD_SERVICE:I = 0x8

.field public static final BACKGROUND_TASK_FEEDV2_REFRESH:I = 0x18

.field public static final BACKGROUND_TASK_FEED_REFRESH:I = 0xe

.field public static final BACKGROUND_TASK_GCM:I = 0x2

.field public static final BACKGROUND_TASK_NOTIFICATIONS:I = 0x3

.field public static final BACKGROUND_TASK_NOTIFICATION_PRE_UNSUBSCRIBE:I = 0x1f

.field public static final BACKGROUND_TASK_NOTIFICATION_SCHEDULER:I = 0x14

.field public static final BACKGROUND_TASK_NOTIFICATION_TRIGGER:I = 0x15

.field public static final BACKGROUND_TASK_NOT_FOUND:I = -0x1

.field public static final BACKGROUND_TASK_OFFLINE_CONTENT_NOTIFICATION:I = 0xb

.field public static final BACKGROUND_TASK_OFFLINE_MEASUREMENTS:I = 0x1a

.field public static final BACKGROUND_TASK_OFFLINE_PAGES:I = 0x6

.field public static final BACKGROUND_TASK_OFFLINE_PREFETCH:I = 0x7

.field public static final BACKGROUND_TASK_OMAHA:I = 0x1

.field public static final BACKGROUND_TASK_ONE_SHOT_SYNC_WAKE_UP:I = 0x13

.field public static final BACKGROUND_TASK_PERIODIC_SYNC_WAKE_UP:I = 0x16

.field public static final BACKGROUND_TASK_QUERY_TILE:I = 0x17

.field public static final BACKGROUND_TASK_TEST:I = 0x0

.field public static final BACKGROUND_TASK_WEBAPK_UPDATE:I = 0xc

.field public static final BACKGROUND_TASK_WEBVIEW_COMPONENT_UPDATE:I = 0x1b

.field public static final BACKGROUND_TASK_WEBVIEW_MINIDUMP:I = 0x4

.field public static final BACKGROUND_TASK_WEBVIEW_VARIATIONS:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toUmaEnumValueFromTaskId(I)I
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_e

    if-eq p0, v0, :cond_d

    const/16 v0, 0x15

    if-eq p0, v0, :cond_c

    const/16 v2, 0x16

    if-eq p0, v2, :cond_b

    const/16 v3, 0x2a

    if-eq p0, v3, :cond_a

    const/16 v3, 0x2b

    if-eq p0, v3, :cond_9

    const/16 v3, 0x4d

    if-eq p0, v3, :cond_8

    const/16 v3, 0x53

    if-eq p0, v3, :cond_7

    const/16 v3, 0x5b

    if-eq p0, v3, :cond_6

    const/16 v3, 0x6e

    if-eq p0, v3, :cond_5

    const/16 v3, 0xdd

    if-eq p0, v3, :cond_4

    const v3, 0x8378

    if-eq p0, v3, :cond_3

    const v3, 0x11684

    if-eq p0, v3, :cond_2

    const/16 v1, 0x70

    if-eq p0, v1, :cond_1

    const/16 v1, 0x71

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const/16 p0, 0x18

    return p0

    :pswitch_1
    const/16 p0, 0x17

    return p0

    :pswitch_2
    return v2

    :pswitch_3
    return v0

    :pswitch_4
    const/16 p0, 0x14

    return p0

    :pswitch_5
    const/16 p0, 0x13

    return p0

    :pswitch_6
    const/16 p0, 0x1e

    return p0

    :pswitch_7
    const/16 p0, 0x1d

    return p0

    :pswitch_8
    const/16 p0, 0x19

    return p0

    :pswitch_9
    const/16 p0, 0x12

    return p0

    :pswitch_a
    const/16 p0, 0xd

    return p0

    :pswitch_b
    const/16 p0, 0x9

    return p0

    :pswitch_c
    const/16 p0, 0x8

    return p0

    :cond_0
    const/16 p0, 0x21

    return p0

    :cond_1
    const/16 p0, 0x20

    return p0

    :cond_2
    return v1

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    const/16 p0, 0x1f

    return p0

    :cond_5
    const/16 p0, 0x1b

    return p0

    :cond_6
    const/16 p0, 0xc

    return p0

    :cond_7
    const/16 p0, 0xa

    return p0

    :cond_8
    const/4 p0, 0x6

    return p0

    :cond_9
    const/4 p0, 0x5

    return p0

    :cond_a
    const/4 p0, 0x4

    return p0

    :cond_b
    const/16 p0, 0xe

    return p0

    :cond_c
    const/4 p0, 0x3

    return p0

    :cond_d
    const/16 p0, 0xf

    return p0

    :cond_e
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x35
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x66
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getHistogramPatternForTaskId(I)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 p0, 0x1

    if-eq p1, p0, :cond_e

    const/4 p0, 0x2

    if-eq p1, p0, :cond_d

    const/16 p0, 0x15

    if-eq p1, p0, :cond_c

    const/16 p0, 0x16

    if-eq p1, p0, :cond_b

    const/16 p0, 0x2a

    if-eq p1, p0, :cond_a

    const/16 p0, 0x2b

    if-eq p1, p0, :cond_9

    const/16 p0, 0x4d

    if-eq p1, p0, :cond_8

    const/16 p0, 0x53

    if-eq p1, p0, :cond_7

    const/16 p0, 0x5b

    if-eq p1, p0, :cond_6

    const/16 p0, 0x6e

    if-eq p1, p0, :cond_5

    const/16 p0, 0xdd

    if-eq p1, p0, :cond_4

    const p0, 0x8378

    if-eq p1, p0, :cond_3

    const p0, 0x11684

    if-eq p1, p0, :cond_2

    const/16 p0, 0x70

    if-eq p1, p0, :cond_1

    const/16 p0, 0x71

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "FeedV2Refresh"

    return-object p0

    :pswitch_1
    const-string p0, "QueryTile"

    return-object p0

    :pswitch_2
    const-string p0, "PeriodicBackgroundSyncChromeWakeup"

    return-object p0

    :pswitch_3
    const-string p0, "NotificationTrigger"

    return-object p0

    :pswitch_4
    const-string p0, "NotificationScheduler"

    return-object p0

    :pswitch_5
    const-string p0, "BackgroundSyncOneShot"

    return-object p0

    :pswitch_6
    const-string p0, "DownloadAutoResumptionAnyNetwork"

    return-object p0

    :pswitch_7
    const-string p0, "DownloadAutoResumptionUnmetered"

    return-object p0

    :pswitch_8
    const-string p0, "DownloadLater"

    return-object p0

    :pswitch_9
    const-string p0, "DownloadAutoResumption"

    return-object p0

    :pswitch_a
    const-string p0, "DeprecatedDownloadResumption"

    return-object p0

    :pswitch_b
    const-string p0, "DownloadCleanup"

    return-object p0

    :pswitch_c
    const-string p0, "DownloadService"

    return-object p0

    :cond_0
    const-string p0, "AuxiliarySearchDonate"

    return-object p0

    :cond_1
    const-string p0, "SafetyHub"

    return-object p0

    :cond_2
    const-string p0, "Omaha"

    return-object p0

    :cond_3
    const-string p0, "Test"

    return-object p0

    :cond_4
    const-string p0, "NotificationServicePreUnsubscribe"

    return-object p0

    :cond_5
    const-string p0, "WebviewComponentUpdate"

    return-object p0

    :cond_6
    const-string p0, "WebApkUpdate"

    return-object p0

    :cond_7
    const-string p0, "WebviewVariationsSeedFetch"

    return-object p0

    :cond_8
    const-string p0, "OfflinePages"

    return-object p0

    :cond_9
    const-string p0, "ChromeMinidumpUploading"

    return-object p0

    :cond_a
    const-string p0, "WebviewMinidumpUploading"

    return-object p0

    :cond_b
    const-string p0, "FeedRefresh"

    return-object p0

    :cond_c
    const-string p0, "NotificationService"

    return-object p0

    :cond_d
    const-string p0, "ComponentUpdate"

    return-object p0

    :cond_e
    const-string p0, "Gcm"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x35
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x66
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract reportTaskStartedNative(I)V
.end method
