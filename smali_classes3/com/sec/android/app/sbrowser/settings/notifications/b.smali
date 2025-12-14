.class public final synthetic Lcom/sec/android/app/sbrowser/settings/notifications/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi$OnMyTransitionListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/b;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/b;->b:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/b;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/b;->b:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;->i(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;)V

    return-void

    :pswitch_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;->a(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
