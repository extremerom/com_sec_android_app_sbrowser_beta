.class public final synthetic Lcom/sec/android/app/sbrowser/toolbar/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbar/u;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/u;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar/u;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/u;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator;->a(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator;Landroid/view/View;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->c(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
