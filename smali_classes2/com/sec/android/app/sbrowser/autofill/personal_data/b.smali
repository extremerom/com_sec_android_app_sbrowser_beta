.class public final synthetic Lcom/sec/android/app/sbrowser/autofill/personal_data/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$Callback;
.implements Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPromptDelegate$CheckUserInputValidity_Response;


# instance fields
.field public final synthetic a:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/b;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/b;->a:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$Callback;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->j(Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$Callback;Z)V

    return-void
.end method

.method public onResult(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/b;->a:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->i(Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;Z)V

    return-void
.end method
