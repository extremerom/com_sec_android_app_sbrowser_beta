.class Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->edit(Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;

.field final synthetic val$address:Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;

.field final synthetic val$callback:Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;

.field final synthetic val$isNewAddress:Z

.field final synthetic val$profile:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;ZLcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$4;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$4;->val$profile:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$4;->val$isNewAddress:Z

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$4;->val$address:Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$4;->val$callback:Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "205"

    const-string v1, "2352"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "201"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$4;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$4;->val$profile:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$4;->val$isNewAddress:Z

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->h(Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$4;->val$address:Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$4;->val$profile:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->completeAddress(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$4;->val$callback:Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$4;->val$address:Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method
