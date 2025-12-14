.class public final synthetic Lcom/sec/android/app/sbrowser/toolbar/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbar/b;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar/b;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/b;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->f(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;Landroid/content/DialogInterface;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->g(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;Landroid/content/DialogInterface;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/sec/android/app/sbrowser/toolbar/AddToHelper;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/AddToHelper;->a(Lcom/sec/android/app/sbrowser/toolbar/AddToHelper;Landroid/content/DialogInterface;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
