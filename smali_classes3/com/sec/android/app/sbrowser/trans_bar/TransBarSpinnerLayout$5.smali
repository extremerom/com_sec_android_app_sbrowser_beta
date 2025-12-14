.class Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$5;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->createAdapter(Landroid/content/Context;Ljava/util/ArrayList;Landroidx/appcompat/widget/AppCompatSpinner;Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerDelegate;)Landroid/widget/ArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$delegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerDelegate;

.field final synthetic val$langList:Ljava/util/ArrayList;

.field final synthetic val$spinner:Landroidx/appcompat/widget/AppCompatSpinner;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;Landroid/content/Context;ILjava/util/List;Ljava/util/ArrayList;Landroid/content/Context;Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerDelegate;Landroidx/appcompat/widget/AppCompatSpinner;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$5;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$5;->val$langList:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$5;->val$context:Landroid/content/Context;

    iput-object p7, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$5;->val$delegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerDelegate;

    iput-object p8, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$5;->val$spinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$5;->val$langList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$5;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$5;->val$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$5;->val$delegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerDelegate;

    invoke-static {p1, p2, p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->g(Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;Landroid/content/Context;Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerDelegate;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$5;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$5;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$5;->val$spinner:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$5;->val$delegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerDelegate;

    move v3, p1

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->f(Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;Landroid/content/Context;Landroidx/appcompat/widget/AppCompatSpinner;ILandroid/view/ViewGroup;Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerDelegate;)Landroidx/appcompat/widget/SeslCheckedTextView;

    move-result-object p0

    return-object p0
.end method
