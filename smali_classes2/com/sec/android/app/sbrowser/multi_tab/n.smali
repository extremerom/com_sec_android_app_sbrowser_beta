.class public final synthetic Lcom/sec/android/app/sbrowser/multi_tab/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Listener;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Listener;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/n;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/n;->b:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/n;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/n;->b:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Listener;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->a(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Listener;Landroid/view/View;)V

    return-void

    :pswitch_0
    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Listener;->onRenameButtonClick(Landroid/view/View;)V

    return-void

    :pswitch_1
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->c(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Listener;Landroid/view/View;)V

    return-void

    :pswitch_2
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->d(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Listener;Landroid/view/View;)V

    return-void

    :pswitch_3
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->f(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Listener;Landroid/view/View;)V

    return-void

    :pswitch_4
    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Listener;->onCloseButtonClick(Landroid/view/View;)V

    return-void

    :pswitch_5
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->e(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Listener;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
