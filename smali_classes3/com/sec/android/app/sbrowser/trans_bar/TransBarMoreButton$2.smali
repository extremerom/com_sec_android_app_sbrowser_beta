.class Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton$2;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton$2;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->e(Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton$2;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->f(Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton$2;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->d(Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const p2, 0x7f140ed0

    if-eq p1, p2, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton$2;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->j(Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;)V

    goto :goto_0

    :pswitch_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton$2;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->i(Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton$2;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->b(Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton$2;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->b(Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    goto :goto_0

    :pswitch_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton$2;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->h(Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton$2;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->c(Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;)Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton$2;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->c(Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;)Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->openSettingsImpl()V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f14106a
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
