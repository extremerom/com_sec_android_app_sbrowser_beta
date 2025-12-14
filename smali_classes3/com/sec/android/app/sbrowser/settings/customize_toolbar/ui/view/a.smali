.class public final synthetic Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/a;->a:I

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/a;->c:Ljava/lang/Object;

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/a;->b:I

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->c(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;ILandroid/view/View;)Z

    move-result p0

    return p0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/a;->b:I

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->e(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;ILandroid/view/View;)Z

    move-result p0

    return p0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/a;->b:I

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->b(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;ILandroid/view/View;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
