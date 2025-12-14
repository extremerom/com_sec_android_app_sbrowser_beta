.class Lcom/sec/android/app/sbrowser/tooltip/SetTooltipTextCompat$1;
.super Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow$HoverPopupListener;
.source "SourceFile"


# instance fields
.field final synthetic val$text:Ljava/lang/String;


# virtual methods
.method public onSetContentView(Landroid/view/View;Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e08fb

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0b0d74

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/tooltip/SetTooltipTextCompat;->a(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    const v1, 0x7f0b0da7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatTextView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tooltip/SetTooltipTextCompat$1;->val$text:Ljava/lang/String;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/tooltip/SetTooltipTextCompat;->b(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatTextView;)V

    :try_start_0
    invoke-virtual {p2, v0}, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->setContent(Landroid/view/View;)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "exception : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "SetTooltipTextCompat"

    invoke-static {p0, p1, p2}, Landroidx/recyclerview/widget/P;->B(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v3

    :cond_0
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
