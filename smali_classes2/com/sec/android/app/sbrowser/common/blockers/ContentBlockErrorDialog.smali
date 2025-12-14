.class public Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mErrAppsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialog;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialog;->mErrAppsList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e01ac

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0e01ad

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0b04ab

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialog;->mErrAppsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v2, v4, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_1

    const v5, 0x7f14036b

    invoke-virtual {p0, v5}, Landroid/app/Dialog;->setTitle(I)V

    const v5, 0x7f14036d

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialog;->mContext:Landroid/content/Context;

    const v7, 0x7f14036c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialog;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialog;->mErrAppsList:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v5, 0x7f14036e

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    const v0, 0x1020016

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialog;->mContext:Landroid/content/Context;

    const v6, 0x7f0602b1

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const v5, 0x7f080133

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0702f5

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v7, v0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0702f6

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v9, v0

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f0602ad

    invoke-virtual {v0, v5}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-direct {v6, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    const v5, 0x7f0b04a9

    invoke-virtual {p0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    invoke-virtual {v5, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f0702e2

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v5, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    new-instance v0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorAppsAdapter;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialog;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialog;->mErrAppsList:Ljava/util/List;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    invoke-direct {v0, v6, v7, v8}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorAppsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/view/LayoutInflater;)V

    invoke-virtual {v5, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v5, p1, v1, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    const p1, 0x7f0b01e8

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isShowButtonShapeEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    invoke-static {p1, v4}, Lcom/sec/sbrowser/spl/wrapper/MajoTextView;->setButtonShapeEnabled(Landroid/widget/TextView;Z)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialog;->mContext:Landroid/content/Context;

    const v1, 0x7f0602bb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f080135

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_3
    :goto_2
    new-instance v0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialog$1;

    invoke-direct {v0, p0, v2}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialog$1;-><init>(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialog;Z)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
