.class Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom$1;
.super Landroidx/recyclerview/widget/j1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom$1;->this$0:Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/j1;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public getItemDelegate()Lf1/b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom$1$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom$1$1;-><init>(Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom$1;)V

    return-object v0
.end method
