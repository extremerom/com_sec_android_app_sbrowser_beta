.class Lcom/sec/android/app/sbrowser/page_info/CertificateViewer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPadding:I

.field private mSelectedIndex:I

.field private mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/page_info/CertificateViewer;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/page_info/CertificateViewer;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/page_info/CertificateViewer;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/page_info/CertificateViewer;->mPadding:I

    return p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/page_info/CertificateViewer;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/page_info/CertificateViewer;->mSelectedIndex:I

    return p0
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iput p3, p0, Lcom/sec/android/app/sbrowser/page_info/CertificateViewer;->mSelectedIndex:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/page_info/CertificateViewer;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    move p4, p2

    :goto_0
    if-ge p4, p1, :cond_1

    iget-object p5, p0, Lcom/sec/android/app/sbrowser/page_info/CertificateViewer;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p5, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/widget/LinearLayout;

    if-ne p4, p3, :cond_0

    move v0, p2

    goto :goto_1

    :cond_0
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p5, v0}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
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
