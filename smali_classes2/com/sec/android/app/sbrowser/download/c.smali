.class public final synthetic Lcom/sec/android/app/sbrowser/download/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;

.field public final synthetic b:Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

.field public final synthetic c:J

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;Lcom/sec/terrace/browser/download/TerraceDownloadInfo;JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/c;->a:Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/c;->b:Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    iput-wide p3, p0, Lcom/sec/android/app/sbrowser/download/c;->c:J

    iput-boolean p5, p0, Lcom/sec/android/app/sbrowser/download/c;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/c;->a:Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/c;->b:Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/download/c;->c:J

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/download/c;->d:Z

    invoke-static {v0, v1, v2, v3, p0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;->a(Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;Lcom/sec/terrace/browser/download/TerraceDownloadInfo;JZ)V

    return-void
.end method
