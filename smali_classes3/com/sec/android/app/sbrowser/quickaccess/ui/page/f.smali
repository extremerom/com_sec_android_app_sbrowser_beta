.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/ui/page/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt/w0;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AdapterDelegate;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AdapterDelegate;II)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/f;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/f;->c:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AdapterDelegate;

    iput p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/f;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/f;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/f;->c:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AdapterDelegate;

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$1;

    iget p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/f;->b:I

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$1;->a(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$1;ILandroid/view/MenuItem;)Z

    move-result p0

    return p0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/f;->c:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AdapterDelegate;

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter$1;

    iget p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/f;->b:I

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter$1;->b(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter$1;ILandroid/view/MenuItem;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
