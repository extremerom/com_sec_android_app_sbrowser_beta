.class public final synthetic Lt0/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt0/h;
.implements Lcom/sec/android/app/sbrowser/common/function/Supplier;
.implements Le1/e;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lt0/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(D)D
    .locals 0

    return-wide p1
.end method

.method public get()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lt0/m;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/auto_close_unused_tabs/AutoCloseUnusedTabsSettings$Companion;->a()Lcom/sec/android/app/sbrowser/settings/auto_close_unused_tabs/AutoCloseUnusedTabsSettings;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {}, Lcom/samsung/android/vexfwk/sdk/bokeheffect/VexFwkPortraitBokehEffect;->h()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {}, Lcom/samsung/android/vexfwk/sdk/bokeheffect/VexFwkPortraitBokehEffect;->q()Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteThread;->a()Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteThread;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->a()Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->a()Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
