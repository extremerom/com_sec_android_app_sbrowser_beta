.class Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData$SyncValues;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncValues"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mTabSyncData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData$SyncValues;->mContext:Landroid/content/Context;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData$SyncValues;->mTabSyncData:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/ProgressDialog;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData$SyncValues;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData$SyncValues;->mProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method
