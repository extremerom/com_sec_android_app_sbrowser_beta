.class public final synthetic Lcom/sec/android/app/sbrowser/settings/notifications/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/c;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/c;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/c;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/c;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi$4;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi$4;->a(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi$4;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;->e(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;->b(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
