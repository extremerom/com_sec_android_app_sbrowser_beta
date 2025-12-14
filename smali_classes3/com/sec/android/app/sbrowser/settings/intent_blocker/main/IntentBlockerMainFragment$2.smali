.class Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf1/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->addOptionMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment$2;->this$0:Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const p0, 0x7f100011

    invoke-virtual {p2, p0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onMenuItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId"
        }
    .end annotation

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    return v1

    :pswitch_0
    const p1, 0x7f140c5a

    move v1, v0

    goto :goto_0

    :pswitch_1
    const p1, 0x7f140c59

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment$2;->this$0:Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->k(Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;)Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;->sort(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment$2;->this$0:Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->getScreenID()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment$2;->this$0:Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0638
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareMenu(Landroid/view/Menu;)V
    .locals 3
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const v0, 0x7f0b0639

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0b0638

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz v0, :cond_5

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment$2;->this$0:Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->k(Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;)Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment$2;->this$0:Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->k(Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;)Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;->hasDetailHistory()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment$2;->this$0:Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->k(Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;)Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;->getCurrentSortMode()I

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_4

    if-eq p0, v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_4
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_5
    :goto_0
    return-void
.end method
