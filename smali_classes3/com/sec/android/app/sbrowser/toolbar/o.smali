.class public final synthetic Lcom/sec/android/app/sbrowser/toolbar/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/toolbar/o;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/o;->b:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar/o;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/o;->b:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->e(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;Landroid/view/View;)V

    return-void

    :pswitch_0
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->b(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;Landroid/view/View;)V

    return-void

    :pswitch_1
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->c(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;Landroid/view/View;)V

    return-void

    :pswitch_2
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->a(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
