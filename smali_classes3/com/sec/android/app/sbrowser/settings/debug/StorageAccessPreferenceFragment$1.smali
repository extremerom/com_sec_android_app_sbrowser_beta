.class Lcom/sec/android/app/sbrowser/settings/debug/StorageAccessPreferenceFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/debug/StorageAccessPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/debug/StorageAccessPreferenceFragment;

.field final synthetic val$editText:Landroid/widget/EditText;

.field final synthetic val$storageAccessImplicitGrantLimit:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/debug/StorageAccessPreferenceFragment;Landroid/widget/EditText;Landroidx/preference/Preference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/StorageAccessPreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/StorageAccessPreferenceFragment;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/debug/StorageAccessPreferenceFragment$1;->val$editText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/debug/StorageAccessPreferenceFragment$1;->val$storageAccessImplicitGrantLimit:Landroidx/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    :try_start_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/StorageAccessPreferenceFragment$1;->val$editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/debug/StorageAccessPreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/StorageAccessPreferenceFragment;

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/settings/debug/StorageAccessPreferenceFragment;->i(Lcom/sec/android/app/sbrowser/settings/debug/StorageAccessPreferenceFragment;I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/StorageAccessPreferenceFragment$1;->val$storageAccessImplicitGrantLimit:Landroidx/preference/Preference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :catch_0
    move-exception p0

    const-string p1, "StorageAccessPreference"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
