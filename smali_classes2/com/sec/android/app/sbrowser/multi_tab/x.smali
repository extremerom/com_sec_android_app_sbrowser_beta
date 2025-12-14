.class public final synthetic Lcom/sec/android/app/sbrowser/multi_tab/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/fragment/app/Fragment;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/Fragment;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/x;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/x;->b:Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/x;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/x;->b:Landroidx/fragment/app/Fragment;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->i(Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->F(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
