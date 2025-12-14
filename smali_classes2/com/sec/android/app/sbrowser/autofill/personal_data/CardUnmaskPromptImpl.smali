.class public Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskPromptImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/services/TerraceServiceBase;
.implements Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt;


# instance fields
.field private mDialogFragment:Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public disableAndWaitForVerification()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskPromptImpl;->mDialogFragment:Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->disableAndWaitForVerification()V

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskPromptImpl;->mDialogFragment:Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/u;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskPromptImpl;->mDialogFragment:Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;

    :cond_0
    return-void
.end method

.method public init(Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPromptDelegate;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)V
    .locals 6

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object p4

    invoke-virtual {p4}, Lcom/sec/terrace/TerraceHelper;->getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object p4

    if-nez p4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p4}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const p7, 0x7f141102

    invoke-virtual {p4, p7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz p5, :cond_1

    invoke-static {p5}, Lcom/sec/terrace/browser/TerraceResourceId;->mapToDrawableId(I)I

    move-result p4

    :goto_0
    move v3, p4

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    goto :goto_0

    :goto_1
    move-object v0, p2

    move-object v1, p3

    move v4, p6

    move v5, p8

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskPromptImpl;->mDialogFragment:Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->setDelegate(Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPromptDelegate;)V

    return-void
.end method

.method public show()V
    .locals 2

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskPromptImpl;->mDialogFragment:Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;

    if-eqz p0, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/J;->getSupportFragmentManager()Landroidx/fragment/app/f0;

    move-result-object v0

    const-string v1, "dialog"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->show(Landroidx/fragment/app/f0;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskPromptImpl;->mDialogFragment:Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->update(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public verificationFinished(Ljava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskPromptImpl;->mDialogFragment:Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->verificationFinished(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
