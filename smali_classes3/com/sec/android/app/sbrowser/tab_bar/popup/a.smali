.class public final synthetic Lcom/sec/android/app/sbrowser/tab_bar/popup/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt/v0;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/a;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/a;->b:Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lt/x0;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/a;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/a;->b:Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->j(Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;Lt/x0;)V

    return-void

    :pswitch_0
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->i(Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;Lt/x0;)V

    return-void

    :pswitch_1
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->f(Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;Lt/x0;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
