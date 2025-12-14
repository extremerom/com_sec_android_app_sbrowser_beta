.class public final synthetic Lcom/sec/android/app/sbrowser/download/ui/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/download/ui/n;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/n;->b:Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/download/ui/n;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/n;->b:Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->b(Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;Landroid/view/View;)V

    return-void

    :pswitch_0
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->c(Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;Landroid/view/View;)V

    return-void

    :pswitch_1
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->e(Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
