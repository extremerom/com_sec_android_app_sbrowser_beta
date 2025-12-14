.class public final synthetic Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuItem;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuItem;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/b;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/b;->b:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuItem;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/b;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/b;->b:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuItem;

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarToolbar;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/b;->c:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarToolbar;->a(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarToolbar;Landroid/view/View;Landroid/view/View;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/b;->b:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuItem;

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarCompactToolbar;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/b;->c:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarCompactToolbar;->a(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarCompactToolbar;Landroid/view/View;Landroid/view/View;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/b;->b:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuItem;

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/b;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter$MenuItemHolder;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->a(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter$MenuItemHolder;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
