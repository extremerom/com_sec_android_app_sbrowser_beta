.class public Lcom/sec/android/app/sbrowser/settings/password/NamePwHeaderViewHolder;
.super Landroidx/recyclerview/widget/h1;
.source "SourceFile"


# instance fields
.field public mSectionTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/h1;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b0d66

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/password/NamePwHeaderViewHolder;->mSectionTitle:Landroid/widget/TextView;

    return-void
.end method
