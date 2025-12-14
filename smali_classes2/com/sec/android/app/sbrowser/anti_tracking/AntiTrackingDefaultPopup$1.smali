.class Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingDefaultPopup$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingDefaultPopup;->showAntiTrackingDefaultDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingDefaultPopup;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingDefaultPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingDefaultPopup$1;->this$0:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingDefaultPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingDefaultPopup$1;->this$0:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingDefaultPopup;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingDefaultPopup;->a(Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingDefaultPopup;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingDefaultPopup$1;->this$0:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingDefaultPopup;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingDefaultPopup;->a(Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingDefaultPopup;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingDefaultPopup$1;->this$0:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingDefaultPopup;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingDefaultPopup;->a(Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingDefaultPopup;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lm/k;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingDefaultPopup$1;->this$0:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingDefaultPopup;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingDefaultPopup;->a(Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingDefaultPopup;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1501c5

    invoke-direct {v0, v1, v2}, Lm/k;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f14093a

    invoke-virtual {v0, v1}, Lm/k;->e(I)V

    const v1, 0x7f140594

    invoke-virtual {v0, v1}, Lm/k;->a(I)V

    new-instance v1, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingDefaultPopup$1$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingDefaultPopup$1$1;-><init>(Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingDefaultPopup$1;)V

    const p0, 0x7f14059a

    invoke-virtual {v0, p0, v1}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    invoke-virtual {v0}, Lm/k;->create()Lm/l;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingDefaultPopup;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error in showing alert dialog:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
