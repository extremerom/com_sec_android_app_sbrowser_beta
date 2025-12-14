.class Lcom/sec/android/app/sbrowser/settings/debug/PushMessagingDebugFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/debug/PushMessagingDebugFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/debug/PushMessagingDebugFragment;

.field final synthetic val$editText:Landroid/widget/EditText;

.field final synthetic val$prefEndpointURL:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/debug/PushMessagingDebugFragment;Landroid/widget/EditText;Landroidx/preference/Preference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/PushMessagingDebugFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/PushMessagingDebugFragment;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/debug/PushMessagingDebugFragment$1;->val$editText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/debug/PushMessagingDebugFragment$1;->val$prefEndpointURL:Landroidx/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/PushMessagingDebugFragment$1;->val$editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/debug/PushMessagingDebugFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/PushMessagingDebugFragment;

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/settings/debug/PushMessagingDebugFragment;->i(Lcom/sec/android/app/sbrowser/settings/debug/PushMessagingDebugFragment;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/PushMessagingDebugFragment$1;->val$prefEndpointURL:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
