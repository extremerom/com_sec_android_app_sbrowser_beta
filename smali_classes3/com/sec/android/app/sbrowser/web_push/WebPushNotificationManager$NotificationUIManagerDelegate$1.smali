.class Lcom/sec/android/app/sbrowser/web_push/WebPushNotificationManager$NotificationUIManagerDelegate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/web_push/WebPushNotificationManager$NotificationUIManagerDelegate;->showDialog(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/web_push/WebPushNotificationManager$NotificationUIManagerDelegate;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/web_push/WebPushNotificationManager$NotificationUIManagerDelegate;Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/web_push/WebPushNotificationManager$NotificationUIManagerDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/web_push/WebPushNotificationManager$NotificationUIManagerDelegate;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/web_push/WebPushNotificationManager$NotificationUIManagerDelegate$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/web_push/WebPushNotificationManager$NotificationUIManagerDelegate$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/web_push/WebPushNotificationManager$NotificationUIManagerDelegate$1;->val$activity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_push/WebPushNotificationManager$NotificationUIManagerDelegate$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
