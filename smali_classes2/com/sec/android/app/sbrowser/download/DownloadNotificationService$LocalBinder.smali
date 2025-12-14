.class public Lcom/sec/android/app/sbrowser/download/DownloadNotificationService$LocalBinder;
.super Landroid/os/Binder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService$LocalBinder;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService$LocalBinder;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;

    return-object p0
.end method
