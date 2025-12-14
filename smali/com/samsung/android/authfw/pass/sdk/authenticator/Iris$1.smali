.class Lcom/samsung/android/authfw/pass/sdk/authenticator/Iris$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/authfw/pass/sdk/authenticator/Iris;->startIdentify([BLandroid/os/CancellationSignal;Lcom/samsung/android/authfw/pass/sdk/authenticator/Iris$IrisAuthenticateListener;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/authfw/pass/sdk/authenticator/Iris;


# direct methods
.method public constructor <init>(Lcom/samsung/android/authfw/pass/sdk/authenticator/Iris;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/authfw/pass/sdk/authenticator/Iris$1;->this$0:Lcom/samsung/android/authfw/pass/sdk/authenticator/Iris;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/authfw/pass/sdk/authenticator/Iris;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cancel IntelligentScan"

    invoke-static {v0, v1}, Lcom/samsung/android/authfw/pass/sdk/util/sdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/authfw/pass/sdk/authenticator/Iris$1;->this$0:Lcom/samsung/android/authfw/pass/sdk/authenticator/Iris;

    invoke-static {p0}, Lcom/samsung/android/authfw/pass/sdk/authenticator/Iris;->access$100(Lcom/samsung/android/authfw/pass/sdk/authenticator/Iris;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/authfw/pass/sdk/authenticator/IntelligentScanManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/authfw/pass/sdk/authenticator/IntelligentScanManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/authfw/pass/sdk/authenticator/IntelligentScanManager;->cancelIdentify()Z

    return-void
.end method
