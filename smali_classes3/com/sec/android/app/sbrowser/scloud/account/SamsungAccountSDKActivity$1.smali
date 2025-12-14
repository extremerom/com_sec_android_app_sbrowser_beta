.class Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountSDKActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountAPICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountSDKActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountSDKActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountSDKActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountSDKActivity$1;->this$0:Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountSDKActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAPIFailed(I)V
    .locals 2

    const-string v0, "get token failed! : "

    const-string v1, "SamsungAccountSDKActivity"

    invoke-static {p1, v0, v1}, LV0/c;->s(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountSDKActivity$1;->this$0:Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountSDKActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onTokenReceived()V
    .locals 2

    const-string v0, "SamsungAccountSDKActivity"

    const-string v1, "onTokenReceived"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountSDKActivity$1;->this$0:Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountSDKActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
