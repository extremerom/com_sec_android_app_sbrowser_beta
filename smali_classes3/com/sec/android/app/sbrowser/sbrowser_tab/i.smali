.class public final synthetic Lcom/sec/android/app/sbrowser/sbrowser_tab/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/i;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/i;->b:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/i;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/i;->b:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->a(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;)V

    return-void

    :pswitch_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->b(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
