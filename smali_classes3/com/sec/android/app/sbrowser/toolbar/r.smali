.class public final synthetic Lcom/sec/android/app/sbrowser/toolbar/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbar/r;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/toolbar/r;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuRecyclerAdapter;->b(Landroid/view/View;)V

    return-void

    :pswitch_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->d(Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
