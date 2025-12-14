.class public final LJ6/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ6/e;


# instance fields
.field public final synthetic a:I

.field public final b:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 0

    iput p2, p0, LJ6/l;->a:I

    iput-object p1, p0, LJ6/l;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Lcom/google/android/material/tabs/a;)V
    .locals 0

    return-void
.end method

.method private final b(Lcom/google/android/material/tabs/a;)V
    .locals 0

    return-void
.end method

.method private final c(Lcom/google/android/material/tabs/a;)V
    .locals 0

    return-void
.end method

.method private final d(Lcom/google/android/material/tabs/a;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onTabReselected(Lcom/google/android/material/tabs/a;)V
    .locals 0

    iget p0, p0, LJ6/l;->a:I

    return-void
.end method

.method public final onTabSelected(Lcom/google/android/material/tabs/a;)V
    .locals 1

    iget v0, p0, LJ6/l;->a:I

    packed-switch v0, :pswitch_data_0

    iget p1, p1, Lcom/google/android/material/tabs/a;->b:I

    const/4 v0, 0x1

    iget-object p0, p0, LJ6/l;->b:Landroid/view/ViewGroup;

    check-cast p0, Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0, p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->c(IZ)V

    return-void

    :pswitch_0
    iget p1, p1, Lcom/google/android/material/tabs/a;->b:I

    iget-object p0, p0, LJ6/l;->b:Landroid/view/ViewGroup;

    check-cast p0, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onTabUnselected(Lcom/google/android/material/tabs/a;)V
    .locals 0

    iget p0, p0, LJ6/l;->a:I

    return-void
.end method
