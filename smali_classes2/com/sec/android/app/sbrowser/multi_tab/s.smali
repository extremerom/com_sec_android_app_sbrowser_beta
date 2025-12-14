.class public final synthetic Lcom/sec/android/app/sbrowser/multi_tab/s;
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

    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/s;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/s;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/s;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/s;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->j(Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;Landroid/view/View;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMoveGroupToolbar;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMoveGroupToolbar;->a(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMoveGroupToolbar;Landroid/view/View;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;->a(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;Landroid/view/View;)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->c(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;Landroid/view/View;)V

    return-void

    :pswitch_3
    check-cast p0, Landroid/widget/CompoundButton;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->f(Landroid/widget/CompoundButton;Landroid/view/View;)V

    return-void

    :pswitch_4
    check-cast p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar$Listener;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;->c(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar$Listener;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
