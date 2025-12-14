.class Lcom/sec/android/app/sbrowser/download/DownloadHandler$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/download/DownloadHandler;->chooseActivity(Landroid/app/Activity;Landroid/content/pm/ResolveInfo;Lcom/sec/terrace/browser/download/TerraceDownloadInfo;J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callbackId:J

.field final synthetic val$downloadInfo:Lcom/sec/terrace/browser/download/TerraceDownloadInfo;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;Landroid/app/Activity;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$3;->val$downloadInfo:Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$3;->val$activity:Landroid/app/Activity;

    iput-wide p3, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$3;->val$callbackId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->getDownloadManagerService()Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$3;->val$downloadInfo:Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$3;->val$activity:Landroid/app/Activity;

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$3;->val$callbackId:J

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->processPreDownloadInfo(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;Landroid/app/Activity;J)V

    return-void
.end method
