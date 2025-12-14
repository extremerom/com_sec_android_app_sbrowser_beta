.class Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$2;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;

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

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$2;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->b(Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$2;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->d(Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$2;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->a(Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;)Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayoutClient;

    move-result-object p0

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayoutClient;->onSourceItemSelected(Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;)V

    return-void
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
