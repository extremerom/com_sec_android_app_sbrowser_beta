.class interface abstract Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field public static final BACKGROUND_TASK_END_TIME_KEY:Ljava/lang/String; = "_background_task_end_time"

.field public static final BACKGROUND_TASK_EXTRAS_KEY:Ljava/lang/String; = "_background_task_extras"

.field public static final BACKGROUND_TASK_FLEX_TIME_KEY:Ljava/lang/String; = "_background_task_flex_time"

.field public static final BACKGROUND_TASK_ID_KEY:Ljava/lang/String; = "_background_task_id"

.field public static final BACKGROUND_TASK_INTERVAL_TIME_KEY:Ljava/lang/String; = "_background_task_interval_time"

.field public static final BACKGROUND_TASK_SCHEDULE_TIME_KEY:Ljava/lang/String; = "_background_task_schedule_time"


# virtual methods
.method public abstract cancel(Landroid/content/Context;I)V
.end method

.method public abstract schedule(Landroid/content/Context;Lorg/chromium/components/background_task_scheduler/TaskInfo;)Z
.end method
