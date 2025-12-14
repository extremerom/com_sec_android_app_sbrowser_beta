.class Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->getPushUserCallback()Lcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper$2;->this$0:Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 1

    const-string p0, "ContentsPushHelper"

    const-string v0, "Failed to sync state"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper$2;->this$0:Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->getRepository()Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;->syncPushTopics()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper$2;->this$0:Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->getRepository()Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;->updateDeviceInfoIfNeeded()V

    return-void
.end method
