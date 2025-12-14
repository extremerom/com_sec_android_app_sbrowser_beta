.class public final synthetic Lorg/chromium/components/background_task_scheduler/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/background_task_scheduler/a;->a:Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;

    iput-boolean p2, p0, Lorg/chromium/components/background_task_scheduler/a;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/components/background_task_scheduler/a;->a:Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;

    iget-boolean p0, p0, Lorg/chromium/components/background_task_scheduler/a;->b:Z

    invoke-static {v0, p0}, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask$1;->a(Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;Z)V

    return-void
.end method
