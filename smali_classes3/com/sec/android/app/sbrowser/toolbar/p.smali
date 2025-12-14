.class public final synthetic Lcom/sec/android/app/sbrowser/toolbar/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/recyclerview/widget/u0;

.field public final synthetic c:Landroidx/recyclerview/widget/h1;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/u0;Landroidx/recyclerview/widget/h1;I)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/toolbar/p;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/p;->b:Landroidx/recyclerview/widget/u0;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/p;->c:Landroidx/recyclerview/widget/h1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar/p;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/p;->b:Landroidx/recyclerview/widget/u0;

    check-cast v0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuRecyclerAdapter;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/p;->c:Landroidx/recyclerview/widget/h1;

    check-cast p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuRecyclerAdapter$SecondaryMenuItemHolder;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuRecyclerAdapter;->d(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuRecyclerAdapter;Lcom/sec/android/app/sbrowser/toolbar/MoreMenuRecyclerAdapter$SecondaryMenuItemHolder;Landroid/view/View;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/p;->b:Landroidx/recyclerview/widget/u0;

    check-cast v0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/p;->c:Landroidx/recyclerview/widget/h1;

    check-cast p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->a(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
