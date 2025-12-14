.class public final synthetic Lcom/sec/android/app/sbrowser/multi_tab/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/i;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/i;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/multi_tab/i;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/i;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/i;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/i;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->o(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/i;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar$1;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/i;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar$Listener;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar$1;->a(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar$1;Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar$Listener;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/i;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$BitmapLoader;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/i;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$BitmapLoader;->c(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$BitmapLoader;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
