.class Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManager;->bindSamsungCloudRPCSetting(Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager$InitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManager;

.field final synthetic val$callback:Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager$InitCallback;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManager;Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager$InitCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManager$1;->this$0:Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManager;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManager$1;->val$callback:Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager$InitCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getServiceType()Ljava/lang/String;
    .locals 0

    const-string p0, "SYNC"

    return-object p0
.end method

.method public onBind(Z)V
    .locals 2

    const-string v0, "bindSamsungCloudRPCSetting onBind : "

    const-string v1, "RPCSettingUIManager"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManager$1;->this$0:Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManager;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManager;->c(Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManager;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManager$1;->val$callback:Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager$InitCallback;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager$InitCallback;->onCompleted()V

    return-void
.end method
