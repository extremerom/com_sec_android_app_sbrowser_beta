.class public final synthetic Lcom/sec/android/app/sbrowser/multi_tab/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/j;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/j;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/multi_tab/j;->c:Ljava/lang/Object;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/multi_tab/j;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/j;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/j;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/j;->b:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/j;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->l(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/j;->d:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/j;->b:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$BitmapLoader;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/j;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$BitmapLoader;->a(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$BitmapLoader;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Landroid/graphics/Bitmap;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
