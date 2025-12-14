.class public final synthetic Lcom/sec/android/app/sbrowser/main_view/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

.field public final synthetic e:Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;


# direct methods
.method public synthetic constructor <init>(IILcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;I)V
    .locals 0

    iput p5, p0, Lcom/sec/android/app/sbrowser/main_view/y;->a:I

    iput p1, p0, Lcom/sec/android/app/sbrowser/main_view/y;->b:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/main_view/y;->c:I

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/y;->d:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/main_view/y;->e:Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallback(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/sbrowser/main_view/y;->a:I

    check-cast p1, Landroid/graphics/Bitmap;

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/main_view/y;->c:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/y;->d:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    iget v2, p0, Lcom/sec/android/app/sbrowser/main_view/y;->b:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/y;->e:Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;

    invoke-static {v2, v0, v1, p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->b(IILcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/main_view/y;->c:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/y;->d:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    iget v2, p0, Lcom/sec/android/app/sbrowser/main_view/y;->b:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/y;->e:Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;

    invoke-static {v2, v0, v1, p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->d(IILcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;Landroid/graphics/Bitmap;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
