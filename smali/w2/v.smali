.class public final Lw2/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic a:Lw2/A;


# direct methods
.method public constructor <init>(Lw2/A;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw2/v;->a:Lw2/A;

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 8

    iget-object v0, p0, Lw2/v;->a:Lw2/A;

    iget-object v1, v0, Lw2/A;->mList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/u0;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v4, v3, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v5, 0x140

    if-gt v4, v5, :cond_0

    iget v5, v3, Landroid/content/res/Configuration;->fontScale:F

    const v6, 0x3f8ccccd    # 1.1f

    cmpl-float v5, v5, v6

    if-gez v5, :cond_1

    :cond_0
    const/16 v5, 0x19b

    if-ge v4, v5, :cond_2

    iget v5, v3, Landroid/content/res/Configuration;->fontScale:F

    const v6, 0x3fa66666    # 1.3f

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_2

    :cond_1
    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x2

    :goto_0
    instance-of v6, v1, Landroidx/preference/g;

    if-eqz v6, :cond_4

    move-object v6, v1

    check-cast v6, Landroidx/preference/g;

    invoke-static {v0, v6, v5, v4}, Lw2/A;->access$100(Lw2/A;Landroidx/preference/g;II)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v0, v5}, Lw2/A;->access$202(Lw2/A;I)I

    move v4, v2

    :goto_1
    iget-object v5, v6, Landroidx/preference/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-virtual {v6, v4}, Landroidx/preference/g;->c(I)Landroidx/preference/Preference;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-static {v5}, Landroidx/preference/g;->f(Landroidx/preference/Preference;)Z

    move-result v7

    if-eqz v7, :cond_3

    instance-of v5, v5, Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v5, :cond_3

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/u0;->notifyItemChanged(I)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    iget v1, v3, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v0, v1}, Lw2/A;->access$302(Lw2/A;I)I

    iget-object v1, v0, Lw2/A;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Lw2/A;->access$002(Lw2/A;Landroid/view/ViewTreeObserver$OnPreDrawListener;)Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :cond_5
    return v2
.end method
