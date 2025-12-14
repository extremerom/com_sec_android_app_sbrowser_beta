.class public final synthetic Lcom/sec/android/app/sbrowser/save_image/view/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/save_image/view/b;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/b;->b:Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/b;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/b;->b:Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->e(Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;Landroid/view/View;Z)V

    return-void

    :pswitch_0
    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->b(Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;Landroid/view/View;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
