.class public final synthetic Lcom/sec/android/app/sbrowser/sbrowser_tab/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;III)V
    .locals 0

    iput p4, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/p;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/p;->b:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;

    iput p2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/p;->c:I

    iput p3, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/p;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/p;->a:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/p;->d:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/p;->b:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;

    iget p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/p;->c:I

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->a(Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;II)V

    return-void

    :pswitch_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/p;->d:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/p;->b:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;

    iget p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/p;->c:I

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->e(Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
