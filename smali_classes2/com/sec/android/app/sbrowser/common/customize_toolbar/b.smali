.class public final synthetic Lcom/sec/android/app/sbrowser/common/customize_toolbar/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EmergencyModeObserver;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/b;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEmergencyModeChanged(Z)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/b;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/b;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->b(Lcom/sec/android/app/sbrowser/media/assistant/MAManager;Z)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->e(Lcom/sec/android/app/sbrowser/media/MediaHandler;Z)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->c(Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
