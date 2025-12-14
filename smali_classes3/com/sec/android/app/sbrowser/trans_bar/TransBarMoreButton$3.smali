.class Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton$3;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->createAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;Landroid/content/Context;ILjava/util/List;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton$3;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton$3;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton$3;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton$3;->val$context:Landroid/content/Context;

    invoke-static {p2, p0, p1, p3}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->g(Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;Landroid/content/Context;ILandroid/view/ViewGroup;)Landroidx/appcompat/widget/SeslCheckedTextView;

    move-result-object p0

    return-object p0
.end method
