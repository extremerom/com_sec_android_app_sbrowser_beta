.class Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$PendingNotificationInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingNotificationInfo"
.end annotation


# instance fields
.field public canDownloadWhileMetered:Z

.field public canResolve:Z

.field public final downloadInfo:Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

.field public isAutoResumable:Z

.field public isSupportedMimeType:Z

.field public startTime:J

.field public systemDownloadId:J

.field public final type:I


# direct methods
.method public constructor <init>(ILcom/sec/terrace/browser/download/TerraceDownloadInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$PendingNotificationInfo;->type:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$PendingNotificationInfo;->downloadInfo:Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    return-void
.end method
