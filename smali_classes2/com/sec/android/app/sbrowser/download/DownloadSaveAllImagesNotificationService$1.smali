.class Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/TerraceHelper$TerraceHelperStartupCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;

.field final synthetic val$set:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService$1;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService$1;->val$set:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService$1;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService$1;->val$set:Ljava/util/HashSet;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->b(Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;Ljava/util/HashSet;)V

    return-void
.end method
