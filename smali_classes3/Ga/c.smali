.class public final synthetic LGa/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LGa/c;->a:I

    iput-object p2, p0, LGa/c;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallback(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, LGa/c;->a:I

    iget-object p0, p0, LGa/c;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;

    check-cast p1, Ljava/lang/Void;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->a(Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;Ljava/lang/Void;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->B(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;Ljava/lang/Boolean;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->e(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Landroid/graphics/Bitmap;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
