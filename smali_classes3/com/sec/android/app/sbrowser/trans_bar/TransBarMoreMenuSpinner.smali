.class public Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreMenuSpinner;
.super Landroidx/appcompat/widget/AppCompatSpinner;
.source "SourceFile"


# instance fields
.field private lastPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreMenuSpinner;->lastPosition:I

    return-void
.end method


# virtual methods
.method public setSelection(I)V
    .locals 7

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setSelection(I)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreMenuSpinner;->lastPosition:I

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemId()J

    move-result-wide v5

    move-object v2, p0

    move v4, p1

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_1
    iput p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreMenuSpinner;->lastPosition:I

    return-void
.end method
