.class public final synthetic Lcom/sec/android/app/sbrowser/zoom_in_out/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/b;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/b;->b:Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/b;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/b;->b:Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->d(Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;Landroid/view/View;)V

    return-void

    :pswitch_0
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->c(Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;Landroid/view/View;)V

    return-void

    :pswitch_1
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->a(Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
