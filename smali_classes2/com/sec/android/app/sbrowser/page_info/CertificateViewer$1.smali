.class Lcom/sec/android/app/sbrowser/page_info/CertificateViewer$1;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/page_info/CertificateViewer;


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

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/page_info/CertificateViewer$1;->this$0:Lcom/sec/android/app/sbrowser/page_info/CertificateViewer;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/page_info/CertificateViewer;->c(Lcom/sec/android/app/sbrowser/page_info/CertificateViewer;)I

    move-result p3

    if-eq p1, p3, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/page_info/CertificateViewer$1;->this$0:Lcom/sec/android/app/sbrowser/page_info/CertificateViewer;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/page_info/CertificateViewer;->a(Lcom/sec/android/app/sbrowser/page_info/CertificateViewer;)Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f0601b5

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/page_info/CertificateViewer$1;->this$0:Lcom/sec/android/app/sbrowser/page_info/CertificateViewer;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/page_info/CertificateViewer;->a(Lcom/sec/android/app/sbrowser/page_info/CertificateViewer;)Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f0601b4

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-object p2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/page_info/CertificateViewer$1;->this$0:Lcom/sec/android/app/sbrowser/page_info/CertificateViewer;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/page_info/CertificateViewer;->b(Lcom/sec/android/app/sbrowser/page_info/CertificateViewer;)I

    move-result p2

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/page_info/CertificateViewer$1;->this$0:Lcom/sec/android/app/sbrowser/page_info/CertificateViewer;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/page_info/CertificateViewer;->b(Lcom/sec/android/app/sbrowser/page_info/CertificateViewer;)I

    move-result p3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/page_info/CertificateViewer$1;->this$0:Lcom/sec/android/app/sbrowser/page_info/CertificateViewer;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/page_info/CertificateViewer;->b(Lcom/sec/android/app/sbrowser/page_info/CertificateViewer;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/CertificateViewer$1;->this$0:Lcom/sec/android/app/sbrowser/page_info/CertificateViewer;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/page_info/CertificateViewer;->b(Lcom/sec/android/app/sbrowser/page_info/CertificateViewer;)I

    move-result v1

    sget-object v2, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/page_info/CertificateViewer$1;->this$0:Lcom/sec/android/app/sbrowser/page_info/CertificateViewer;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/page_info/CertificateViewer;->a(Lcom/sec/android/app/sbrowser/page_info/CertificateViewer;)Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f0601b5

    invoke-virtual {p2, p3}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const p3, 0x101030e

    const/4 v0, 0x1

    invoke-virtual {p0, p3, p2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p0, p2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    return-object p1
.end method
