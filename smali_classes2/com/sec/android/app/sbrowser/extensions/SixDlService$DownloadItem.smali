.class public Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/extensions/SixDlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownloadItem"
.end annotation


# instance fields
.field private mAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/extensions/SixDlService$AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDescList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mId:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPermissionsTitle:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extensions/SixDlService;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/extensions/SixDlService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/extensions/SixDlService$AppItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadItem;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadItem;->mId:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadItem;->mName:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadItem;->mPackageName:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadItem;->mTitle:Ljava/lang/String;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadItem;->mDescList:Ljava/util/ArrayList;

    iput-object p7, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadItem;->mAppList:Ljava/util/ArrayList;

    iput-object p8, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadItem;->mPermissionsTitle:Ljava/lang/String;

    iput-object p9, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadItem;->mPermissions:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getApps()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/extensions/SixDlService$AppItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadItem;->mAppList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getDescList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadItem;->mDescList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadItem;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadItem;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getPermissions()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadItem;->mPermissions:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getPermissionsTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadItem;->mPermissionsTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadItem;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadItem;->mName:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadItem;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadItem;->mAppList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$AppItem;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixDlService$AppItem;->setName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
