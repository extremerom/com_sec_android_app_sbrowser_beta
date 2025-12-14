.class Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment$1;
.super LH6/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;->showSnackBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed(LH6/o;I)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/J;->onBackPressed()V

    return-void
.end method

.method public bridge synthetic onDismissed(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, LH6/o;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment$1;->onDismissed(LH6/o;I)V

    return-void
.end method
