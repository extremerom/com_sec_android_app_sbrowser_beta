.class Lcom/sec/android/app/sbrowser/scloud/push/CloudPushHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/smp/SmpController$InitializeResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/scloud/push/CloudPushHelper;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/scloud/push/CloudPushHelper;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/scloud/push/CloudPushHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/push/CloudPushHelper$1;->this$0:Lcom/sec/android/app/sbrowser/scloud/push/CloudPushHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 1

    const-string p0, "CloudPushHelper"

    const-string v0, "Failed to initialize SMP in initialize"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess()V
    .locals 1

    const-string p0, "CloudPushHelper"

    const-string v0, "Succeed to initialize SMP in initialize"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
