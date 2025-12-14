.class Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter$DescriptionViewHolder;
.super Landroidx/recyclerview/widget/h1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DescriptionViewHolder"
.end annotation


# instance fields
.field private mDescription:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/h1;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b03eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter$DescriptionViewHolder;->mDescription:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public setSummary(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter$DescriptionViewHolder;->mDescription:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
