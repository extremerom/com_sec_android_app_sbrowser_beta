.class public Lcom/sec/android/app/sbrowser/settings/search/SettingSearchHeaderViewHolder;
.super Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;
.source "SourceFile"


# instance fields
.field public mRowView:Landroid/view/View;

.field public mSectionTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchHeaderViewHolder;->mRowView:Landroid/view/View;

    const v0, 0x7f0b0d66

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchHeaderViewHolder;->mSectionTitle:Landroid/widget/TextView;

    return-void
.end method
