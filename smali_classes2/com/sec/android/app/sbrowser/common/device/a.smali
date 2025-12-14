.class public final synthetic Lcom/sec/android/app/sbrowser/common/device/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/device/a;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/device/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBrowserPreferenceChanged(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/device/a;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/device/a;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomData;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomData;->a(Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomData;Ljava/lang/String;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->a(Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
