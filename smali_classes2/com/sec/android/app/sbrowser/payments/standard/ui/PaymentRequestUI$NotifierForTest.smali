.class Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$NotifierForTest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotifierForTest"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mNotification:Ljava/lang/Runnable;

.field private mNotificationPending:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$NotifierForTest;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$NotifierForTest$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$NotifierForTest$1;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$NotifierForTest;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$NotifierForTest;->mNotification:Ljava/lang/Runnable;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$NotifierForTest;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$NotifierForTest;->mNotificationPending:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$NotifierForTest;->mNotificationPending:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$NotifierForTest;->mNotificationPending:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$NotifierForTest;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$NotifierForTest;->mNotification:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
