.class Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$ClientInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClientInfo"
.end annotation


# instance fields
.field mCid:Ljava/lang/String;

.field mTableName:Ljava/lang/String;

.field mTableVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$ClientInfo;->mCid:Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$ClientInfo;->mTableName:Ljava/lang/String;

    const/4 v0, 0x2

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$ClientInfo;->mTableVersion:Ljava/lang/String;

    return-void
.end method
