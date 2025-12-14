.class Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper$WebApkNotificationInfo;
.implements Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader$WebApkDownloadInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebApkInstallInfo"
.end annotation


# instance fields
.field private final mApkDownloadUrl:Ljava/lang/String;

.field private mApkFile:Ljava/io/File;

.field private final mManifestUrl:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field private mProgessPercentage:I

.field private final mStartTime:J

.field private final mStartUrl:Ljava/lang/String;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;->mTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;->mManifestUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;->mStartUrl:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;->mApkDownloadUrl:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;->mStartTime:J

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;->mApkFile:Ljava/io/File;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;->mApkFile:Ljava/io/File;

    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;I)V
    .locals 0

    iput p1, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;->mProgessPercentage:I

    return-void
.end method


# virtual methods
.method public getApkDownloadUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;->mApkDownloadUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getManifestUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;->mManifestUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getProgressPercentage()I
    .locals 0

    iget p0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;->mProgessPercentage:I

    return p0
.end method

.method public getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;->mStartTime:J

    return-wide v0
.end method

.method public getStartUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;->mStartUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;->mTitle:Ljava/lang/String;

    return-object p0
.end method
