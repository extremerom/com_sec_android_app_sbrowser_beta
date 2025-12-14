.class public final synthetic Lcom/sec/android/app/sbrowser/main_view/menu/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/c;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/c;->b:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/c;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/c;->b:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->onExit()V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->onMyanmar()V

    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->onSetting()V

    return-void

    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->onPrivacy()V

    return-void

    :pswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->onPrint()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
