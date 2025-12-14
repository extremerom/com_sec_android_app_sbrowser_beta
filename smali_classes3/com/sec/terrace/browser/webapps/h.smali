.class public final synthetic Lcom/sec/terrace/browser/webapps/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/terrace/browser/webapps/TinWebApkUpdateTask;

.field public final synthetic b:Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/terrace/browser/webapps/TinWebApkUpdateTask;Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/webapps/h;->a:Lcom/sec/terrace/browser/webapps/TinWebApkUpdateTask;

    iput-object p2, p0, Lcom/sec/terrace/browser/webapps/h;->b:Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/webapps/h;->a:Lcom/sec/terrace/browser/webapps/TinWebApkUpdateTask;

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/h;->b:Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;

    invoke-static {v0, p0}, Lcom/sec/terrace/browser/webapps/TinWebApkUpdateTask;->e(Lcom/sec/terrace/browser/webapps/TinWebApkUpdateTask;Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;)V

    return-void
.end method
