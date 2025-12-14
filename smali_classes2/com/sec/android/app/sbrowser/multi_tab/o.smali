.class public final synthetic Lcom/sec/android/app/sbrowser/multi_tab/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/widget/LinearLayout;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/LinearLayout;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/multi_tab/o;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/o;->b:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/o;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/o;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/o;->b:Landroid/widget/LinearLayout;

    check-cast v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/o;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar$Delegate;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->b(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar$Delegate;Landroid/view/View;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/o;->b:Landroid/widget/LinearLayout;

    check-cast v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/o;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Listener;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->b(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Listener;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
