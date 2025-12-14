.class final enum Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WebApkInstallEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

.field public static final enum DOWNLOADING:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

.field public static final enum DOWNLOAD_CANCELLED:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

.field public static final enum DOWNLOAD_COMPLETED:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

.field public static final enum DOWNLOAD_FAILED:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

.field public static final enum DOWNLOAD_INTERRUPTED:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

.field public static final enum INSTALLING:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

.field public static final enum INSTALL_COMPLETED:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

.field public static final enum INSTALL_FAILED:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

.field public static final enum READY:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

.field public static final enum UPDATE_COMPLETED:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;


# direct methods
.method private static synthetic $values()[Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;
    .locals 10

    sget-object v0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;->READY:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

    sget-object v1, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;->DOWNLOADING:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

    sget-object v2, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;->DOWNLOAD_FAILED:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

    sget-object v3, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;->DOWNLOAD_INTERRUPTED:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

    sget-object v4, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;->DOWNLOAD_CANCELLED:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

    sget-object v5, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;->DOWNLOAD_COMPLETED:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

    sget-object v6, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;->INSTALLING:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

    sget-object v7, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;->INSTALL_FAILED:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

    sget-object v8, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;->INSTALL_COMPLETED:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

    sget-object v9, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;->UPDATE_COMPLETED:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

    filled-new-array/range {v0 .. v9}, [Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;->READY:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

    new-instance v0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

    const-string v1, "DOWNLOADING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;->DOWNLOADING:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

    new-instance v0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

    const-string v1, "DOWNLOAD_FAILED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;->DOWNLOAD_FAILED:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

    new-instance v0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

    const-string v1, "DOWNLOAD_INTERRUPTED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;->DOWNLOAD_INTERRUPTED:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

    new-instance v0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

    const-string v1, "DOWNLOAD_CANCELLED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;->DOWNLOAD_CANCELLED:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

    new-instance v0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

    const-string v1, "DOWNLOAD_COMPLETED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;->DOWNLOAD_COMPLETED:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

    new-instance v0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

    const-string v1, "INSTALLING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;->INSTALLING:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

    new-instance v0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

    const-string v1, "INSTALL_FAILED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;->INSTALL_FAILED:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

    new-instance v0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

    const-string v1, "INSTALL_COMPLETED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;->INSTALL_COMPLETED:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

    new-instance v0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

    const-string v1, "UPDATE_COMPLETED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;->UPDATE_COMPLETED:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

    invoke-static {}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;->$values()[Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

    move-result-object v0

    sput-object v0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;->$VALUES:[Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;
    .locals 1

    const-class v0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

    return-object p0
.end method

.method public static values()[Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;
    .locals 1

    sget-object v0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;->$VALUES:[Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

    invoke-virtual {v0}, [Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

    return-object v0
.end method
