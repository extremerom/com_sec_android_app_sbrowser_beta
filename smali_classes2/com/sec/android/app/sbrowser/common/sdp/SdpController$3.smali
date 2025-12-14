.class Lcom/sec/android/app/sbrowser/common/sdp/SdpController$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpEngineDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->migrationToSdp(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/sdp/SdpController;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$password:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/sdp/SdpController;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$3;->this$0:Lcom/sec/android/app/sbrowser/common/sdp/SdpController;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$3;->val$password:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$3;->val$context:Landroid/content/Context;

    return-object p0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$3;->val$password:Ljava/lang/String;

    return-object p0
.end method

.method public isEngineAlreadyAdded()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$3;->this$0:Lcom/sec/android/app/sbrowser/common/sdp/SdpController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->isEngineAdded()Z

    move-result p0

    return p0
.end method
