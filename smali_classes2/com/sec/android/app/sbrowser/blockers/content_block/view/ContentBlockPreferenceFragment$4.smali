.class Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;->n(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;->n(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;->isAuthorizedInterface(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;->m(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;->o(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    const-string p2, "6123"

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;->o(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;->o(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;->t(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;)V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;->j(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;)Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;->o(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->setSelectedPackageNameList(Landroid/content/Context;Ljava/util/ArrayList;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-wide/16 v2, 0x0

    invoke-static {p0, p2, v0, v2, v3}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return v1

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;->o(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v3, 0x5

    if-ge p1, v3, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;->o(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;->o(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;->t(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;)V

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;->j(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;)Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;->o(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->setSelectedPackageNameList(Landroid/content/Context;Ljava/util/ArrayList;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-wide/16 v2, 0x1

    invoke-static {p0, p2, v0, v2, v3}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return v1

    :cond_5
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f140379

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;->s(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f14038e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;->s(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f14038d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;->s(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;Ljava/lang/String;)V

    :goto_0
    return v2
.end method
