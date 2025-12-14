.class public Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO$TabSyncItems;
    }
.end annotation


# instance fields
.field public dateModified:J

.field public deviceId:Ljava/lang/String;

.field public deviceName:Ljava/lang/String;

.field public isSelected:Z

.field public tabSyncList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO$TabSyncItems;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;->tabSyncList:Ljava/util/ArrayList;

    return-void
.end method
