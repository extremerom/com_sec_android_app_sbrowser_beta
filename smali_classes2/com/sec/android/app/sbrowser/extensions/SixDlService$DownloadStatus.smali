.class final enum Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/extensions/SixDlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DownloadStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadStatus;

.field public static final enum DISABLED:Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadStatus;

.field public static final enum DOWNLOADED:Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadStatus;

.field public static final enum ENABLED:Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadStatus;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadStatus;
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadStatus;->DISABLED:Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadStatus;

    sget-object v1, Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadStatus;->DOWNLOADED:Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadStatus;

    sget-object v2, Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadStatus;->ENABLED:Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadStatus;

    filled-new-array {v0, v1, v2}, [Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadStatus;

    const-string v1, "DISABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadStatus;->DISABLED:Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadStatus;

    new-instance v0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadStatus;

    const-string v1, "DOWNLOADED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadStatus;->DOWNLOADED:Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadStatus;

    new-instance v0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadStatus;

    const-string v1, "ENABLED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadStatus;->ENABLED:Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadStatus;

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadStatus;->$values()[Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadStatus;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadStatus;->$VALUES:[Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadStatus;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadStatus;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadStatus;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadStatus;->$VALUES:[Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadStatus;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadStatus;

    return-object v0
.end method
