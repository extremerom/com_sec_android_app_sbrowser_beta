.class Lcom/sec/android/app/sbrowser/scloud/account/SamsungMobileWebAccountHandler$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/scloud/account/SamsungMobileWebAccountHandler$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/scloud/account/SamsungMobileWebAccountHandler$1;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/scloud/account/SamsungMobileWebAccountHandler$1;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungMobileWebAccountHandler$1$1;->this$1:Lcom/sec/android/app/sbrowser/scloud/account/SamsungMobileWebAccountHandler$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungMobileWebAccountHandler$1$1;->this$1:Lcom/sec/android/app/sbrowser/scloud/account/SamsungMobileWebAccountHandler$1;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungMobileWebAccountHandler$1;->val$context:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/scloud/account/SamsungMobileWebAccountHandler;->e(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "SamsungMobileWebAccountHandler"

    const-string v0, "Requesting Samsung Account information failed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
