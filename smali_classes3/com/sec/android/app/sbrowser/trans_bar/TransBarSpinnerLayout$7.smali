.class Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->getLangListView(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatSpinner;ILandroid/view/ViewGroup;Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerDelegate;)Landroidx/appcompat/widget/SeslCheckedTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;

.field final synthetic val$delegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerDelegate;

.field final synthetic val$position:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerDelegate;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$7;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$7;->val$delegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerDelegate;

    iput p3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$7;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$7;->val$delegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerDelegate;->dismissDropDown()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$7;->val$delegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerDelegate;->getLangList()Ljava/util/ArrayList;

    move-result-object p1

    iget v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$7;->val$position:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onClick onItemSelected:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TransBarSpinnerLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$7;->val$delegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerDelegate;->onUpdateSourceLang(Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;)V

    return-void
.end method
