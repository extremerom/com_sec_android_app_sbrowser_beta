.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/ui/page/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomAnimator;

.field public final synthetic c:Landroidx/recyclerview/widget/h1;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomAnimator;Landroidx/recyclerview/widget/h1;I)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/v;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/v;->b:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomAnimator;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/v;->c:Landroidx/recyclerview/widget/h1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/v;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/v;->b:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomAnimator;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/v;->c:Landroidx/recyclerview/widget/h1;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomAnimator;->h(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomAnimator;Landroidx/recyclerview/widget/h1;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/v;->b:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomAnimator;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/v;->c:Landroidx/recyclerview/widget/h1;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomAnimator;->e(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomAnimator;Landroidx/recyclerview/widget/h1;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
