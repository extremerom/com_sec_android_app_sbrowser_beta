.class Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThumbnailInfo"
.end annotation


# instance fields
.field mFilePath:Ljava/lang/String;

.field mId:Ljava/lang/Long;

.field mMimetype:Ljava/lang/String;

.field mThumbnailReaquest:Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailRequest;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailInfo;->mThumbnailReaquest:Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailRequest;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailInfo;->mFilePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailInfo;->mMimetype:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailInfo;->mId:Ljava/lang/Long;

    return-void
.end method
