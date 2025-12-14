.class public final synthetic Lcom/sec/android/app/sbrowser/download/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

.field public final synthetic b:Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

.field public final synthetic c:Landroid/app/Activity;

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/download/DownloadManagerService;Lcom/sec/terrace/browser/download/TerraceDownloadInfo;Landroid/app/Activity;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/d;->a:Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/d;->b:Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/download/d;->c:Landroid/app/Activity;

    iput-wide p4, p0, Lcom/sec/android/app/sbrowser/download/d;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/d;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/d;->b:Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/d;->a:Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    iget-wide v3, p0, Lcom/sec/android/app/sbrowser/download/d;->d:J

    invoke-static {v2, v1, v0, v3, v4}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->g(Lcom/sec/android/app/sbrowser/download/DownloadManagerService;Lcom/sec/terrace/browser/download/TerraceDownloadInfo;Landroid/app/Activity;J)V

    return-void
.end method
