.class Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment$DialogDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment;->showSetOtherDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment$1;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentValue()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment$1;->val$key:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "pref_debug_fake_aid"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_1
    const-string v1, "pref_debug_fake_spname"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "pref_debug_fake_spcode"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "pref_debug_fake_mccmnc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_4
    const-string v1, "pref_debug_fake_subsetcode"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    const-string p0, "TssConfigPreferenceFragment"

    const-string v0, "no proposal key "

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "not set"

    return-object p0

    :pswitch_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getFakeActivatedId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getFakeSpName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getFakeSpCode()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getFakeMccMnc()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getFakeSubsetCode()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x497298cf -> :sswitch_4
        -0x172460a9 -> :sswitch_3
        -0xc301514 -> :sswitch_2
        -0xc2b4876 -> :sswitch_1
        0x5c24b75a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getMessage()I
    .locals 0

    const p0, 0x7f140540

    return p0
.end method

.method public onNegativeClick()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment;->i(Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment;)V

    return-void
.end method

.method public onPositiveClick()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment$1;->val$key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "pref_debug_fake_aid"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v2, "pref_debug_fake_spname"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v2, "pref_debug_fake_spcode"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "pref_debug_fake_mccmnc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string v2, "pref_debug_fake_subsetcode"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const-string v0, "TssConfigPreferenceFragment"

    const-string v1, "no proposal key for dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment;->h(Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment;)Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->setFakeActivatedId(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment;->h(Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment;)Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->setFakeSpName(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment;->h(Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment;)Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->setFakeSpCode(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment;->h(Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment;)Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->setFakeMccMnc(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_4
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment;->h(Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment;)Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->setFakeSubsetCode(Ljava/lang/String;)V

    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment;->i(Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x497298cf -> :sswitch_4
        -0x172460a9 -> :sswitch_3
        -0xc301514 -> :sswitch_2
        -0xc2b4876 -> :sswitch_1
        0x5c24b75a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
