.class public Lcom/sec/android/app/sbrowser/settings/base_class/BaseHistoryAdapter$EmptyViewHolder;
.super Lcom/sec/android/app/sbrowser/sesl_common/SeslBaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/base_class/BaseHistoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmptyViewHolder"
.end annotation


# instance fields
.field protected final mRowView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sesl_common/SeslBaseViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/base_class/BaseHistoryAdapter$EmptyViewHolder;->mRowView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getRowView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/base_class/BaseHistoryAdapter$EmptyViewHolder;->mRowView:Landroid/view/View;

    return-object p0
.end method

.method public setDividerVisible(I)V
    .locals 0

    return-void
.end method
