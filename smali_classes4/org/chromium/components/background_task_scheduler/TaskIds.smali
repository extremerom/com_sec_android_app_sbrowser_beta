.class public interface abstract annotation Lorg/chromium/components/background_task_scheduler/TaskIds;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE_USE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final ATTRIBUTION_PROVIDER_FLUSH_JOB_ID:I = 0x6f

.field public static final AUXILIARY_SEARCH_DONATE_JOB_ID:I = 0x71

.field public static final BACKGROUND_SYNC_ONE_SHOT_JOB_ID:I = 0x66

.field public static final CHROME_MINIDUMP_UPLOADING_JOB_ID:I = 0x2b

.field public static final COMPONENT_UPDATE_JOB_ID:I = 0x2

.field public static final DEPRECATED_DOWNLOAD_RESUMPTION_JOB_ID:I = 0x37

.field public static final DOWNLOAD_AUTO_RESUMPTION_ANY_NETWORK_JOB_ID:I = 0x3b

.field public static final DOWNLOAD_AUTO_RESUMPTION_JOB_ID:I = 0x38

.field public static final DOWNLOAD_AUTO_RESUMPTION_UNMETERED_JOB_ID:I = 0x3a

.field public static final DOWNLOAD_CLEANUP_JOB_ID:I = 0x36

.field public static final DOWNLOAD_LATER_JOB_ID:I = 0x39

.field public static final DOWNLOAD_SERVICE_JOB_ID:I = 0x35

.field public static final FEEDV2_REFRESH_JOB_ID:I = 0x6b

.field public static final FEED_REFRESH_JOB_ID:I = 0x16

.field public static final GCM_BACKGROUND_TASK_JOB_ID:I = 0x1

.field public static final NOTIFICATION_SCHEDULER_JOB_ID:I = 0x67

.field public static final NOTIFICATION_SERVICE_JOB_ID:I = 0x15

.field public static final NOTIFICATION_SERVICE_PRE_UNSUBSCRIBE_JOB_ID:I = 0xdd

.field public static final NOTIFICATION_TRIGGER_JOB_ID:I = 0x68

.field public static final OFFLINE_PAGES_BACKGROUND_JOB_ID:I = 0x4d

.field public static final OMAHA_JOB_ID:I = 0x11684

.field public static final PERIODIC_BACKGROUND_SYNC_CHROME_WAKEUP_TASK_JOB_ID:I = 0x69

.field public static final QUERY_TILE_JOB_ID:I = 0x6a

.field public static final SAFETY_HUB_JOB_ID:I = 0x70

.field public static final TEST:I = 0x8378

.field public static final WEBAPK_UPDATE_JOB_ID:I = 0x5b

.field public static final WEBFEEDS_REFRESH_JOB_ID:I = 0x6d

.field public static final WEBVIEW_COMPONENT_UPDATE_JOB_ID:I = 0x6e

.field public static final WEBVIEW_MINIDUMP_UPLOADING_JOB_ID:I = 0x2a

.field public static final WEBVIEW_VARIATIONS_SEED_FETCH_JOB_ID:I = 0x53
