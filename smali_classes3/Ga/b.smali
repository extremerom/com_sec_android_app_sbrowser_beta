.class public final synthetic LGa/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;

.field public final synthetic c:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;I)V
    .locals 0

    iput p3, p0, LGa/b;->a:I

    iput-object p1, p0, LGa/b;->b:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;

    iput-object p2, p0, LGa/b;->c:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallback(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, LGa/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LGa/b;->c:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object p0, p0, LGa/b;->b:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->a(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LGa/b;->c:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object p0, p0, LGa/b;->b:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->d(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Landroid/graphics/Bitmap;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
