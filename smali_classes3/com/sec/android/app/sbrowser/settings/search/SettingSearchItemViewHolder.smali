.class public final Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItemViewHolder;
.super Lcom/sec/android/app/sbrowser/sesl_common/SeslBaseViewHolder;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0006\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\r\u001a\u0004\u0008\u000e\u0010\u0007\"\u0004\u0008\u000f\u0010\u0005R\"\u0010\u0011\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\"\u0010\u0017\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\r\u001a\u0004\u0008\u0018\u0010\u0007\"\u0004\u0008\u0019\u0010\u0005\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItemViewHolder;",
        "Lcom/sec/android/app/sbrowser/sesl_common/SeslBaseViewHolder;",
        "Landroid/view/View;",
        "mRowView",
        "<init>",
        "(Landroid/view/View;)V",
        "getRowView",
        "()Landroid/view/View;",
        "",
        "color",
        "Ldb/r;",
        "setDividerVisible",
        "(I)V",
        "Landroid/view/View;",
        "getMRowView",
        "setMRowView",
        "Landroid/widget/TextView;",
        "mTitleView",
        "Landroid/widget/TextView;",
        "getMTitleView",
        "()Landroid/widget/TextView;",
        "setMTitleView",
        "(Landroid/widget/TextView;)V",
        "mDivider",
        "getMDivider",
        "setMDivider",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private mDivider:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mRowView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mTitleView:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mRowView"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sesl_common/SeslBaseViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItemViewHolder;->mRowView:Landroid/view/View;

    iget-object p1, p0, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    const v0, 0x7f0b0b3f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(...)"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItemViewHolder;->mTitleView:Landroid/widget/TextView;

    iget-object p1, p0, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    const v1, 0x7f0b0b3d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItemViewHolder;->mDivider:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final getMDivider()Landroid/view/View;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItemViewHolder;->mDivider:Landroid/view/View;

    return-object p0
.end method

.method public final getMTitleView()Landroid/widget/TextView;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItemViewHolder;->mTitleView:Landroid/widget/TextView;

    return-object p0
.end method

.method public getRowView()Landroid/view/View;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItemViewHolder;->mRowView:Landroid/view/View;

    return-object p0
.end method

.method public setDividerVisible(I)V
    .locals 0

    return-void
.end method
