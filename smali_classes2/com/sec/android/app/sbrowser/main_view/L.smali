.class public final synthetic Lcom/sec/android/app/sbrowser/main_view/L;
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

    iput p1, p0, Lcom/sec/android/app/sbrowser/main_view/L;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/L;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallback(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/main_view/L;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/L;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->a(Lcom/sec/android/app/sbrowser/main_view/MainViewReader;Ljava/lang/Boolean;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    check-cast p1, Ljava/lang/Void;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->k(Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;Ljava/lang/Void;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;->a(Lcom/sec/android/app/sbrowser/main_view/MainViewMultiTab;Landroid/graphics/Bitmap;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
