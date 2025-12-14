.class public final synthetic Lcom/sec/android/app/sbrowser/sbrowser_tab/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/o;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/o;->b:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/o;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/o;->b:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->b(Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;)V

    return-void

    :pswitch_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->f(Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
