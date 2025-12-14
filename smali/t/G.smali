.class public final Lt/G;
.super Lt/j0;
.source "SourceFile"


# instance fields
.field public final synthetic j:Landroidx/appcompat/widget/c;

.field public final synthetic k:Landroidx/appcompat/widget/AppCompatSpinner;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/AppCompatSpinner;Landroidx/appcompat/widget/AppCompatSpinner;Landroidx/appcompat/widget/c;)V
    .locals 0

    iput-object p1, p0, Lt/G;->k:Landroidx/appcompat/widget/AppCompatSpinner;

    iput-object p3, p0, Lt/G;->j:Landroidx/appcompat/widget/c;

    invoke-direct {p0, p2}, Lt/j0;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final b()Ls/x;
    .locals 0

    iget-object p0, p0, Lt/G;->j:Landroidx/appcompat/widget/c;

    return-object p0
.end method

.method public final c()Z
    .locals 1

    iget-object p0, p0, Lt/G;->k:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->getInternalPopup()Lt/L;

    move-result-object v0

    invoke-interface {v0}, Lt/L;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->showPopup()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
