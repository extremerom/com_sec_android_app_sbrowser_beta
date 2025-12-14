.class Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$4;
.super Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpResponseHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;->uploadItem(Ljava/util/List;Landroid/os/ParcelFileDescriptor;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$4;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSCloudResponse(ILorg/json/JSONObject;)V
    .locals 0

    return-void
.end method
