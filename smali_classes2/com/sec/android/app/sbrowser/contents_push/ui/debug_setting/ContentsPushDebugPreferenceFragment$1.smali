.class Lcom/sec/android/app/sbrowser/contents_push/ui/debug_setting/ContentsPushDebugPreferenceFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/contents_push/ui/debug_setting/ContentsPushDebugPreferenceFragment;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/contents_push/ui/debug_setting/ContentsPushDebugPreferenceFragment;

.field final synthetic val$newValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/contents_push/ui/debug_setting/ContentsPushDebugPreferenceFragment;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/debug_setting/ContentsPushDebugPreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/contents_push/ui/debug_setting/ContentsPushDebugPreferenceFragment;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/debug_setting/ContentsPushDebugPreferenceFragment$1;->val$newValue:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getInstance()Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/debug_setting/ContentsPushDebugPreferenceFragment$1;->val$newValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    sget-object v1, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushGlobalConfigUtils;->Companion:Lcom/sec/android/app/sbrowser/contents_push/ContentsPushGlobalConfigUtils$Companion;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushGlobalConfigUtils$Companion;->needTncAgreement()Z

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->changeServerType(Ljava/lang/String;Z)V

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->syncStateIfNeeded(Z)V

    return-void
.end method
