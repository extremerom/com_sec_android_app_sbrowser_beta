.class Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;->edit(Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;

.field final synthetic val$callback:Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;

.field final synthetic val$contact:Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;

.field final synthetic val$emailField:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

.field final synthetic val$nameField:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

.field final synthetic val$phoneField:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor$2;->val$contact:Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor$2;->val$nameField:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor$2;->val$phoneField:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor$2;->val$emailField:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor$2;->val$callback:Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor$2;->val$contact:Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->getProfile()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    move-result-object v0

    const-string v1, "206"

    const-string v2, "2354"

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "201"

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor$2;->val$nameField:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getValue()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->setFullName(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor$2;->val$phoneField:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getValue()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->setPhoneNumber(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor$2;->val$emailField:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getValue()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->setEmailAddress(Ljava/lang/String;)V

    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;->a(Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->setProfile(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->setGUID(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getGUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->setGUID(Ljava/lang/String;)V

    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor$2;->val$contact:Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getGUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v1, v3, v2}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->completeContact(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor$2;->val$callback:Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor$2;->val$contact:Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method
