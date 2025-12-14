.class public interface abstract annotation Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask$StartBeforeNativeResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "StartBeforeNativeResult"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final DONE:I = 0x2

.field public static final LOAD_NATIVE:I = 0x0

.field public static final RESCHEDULE:I = 0x1
