.class public final synthetic Lcom/sec/android/app/sbrowser/sbrowser_tab/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/m;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/m;->b:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/m;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/m;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/m;->b:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/m;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->d(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/m;->b:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/m;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->h(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;Ljava/lang/String;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/m;->b:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/m;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->f(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
