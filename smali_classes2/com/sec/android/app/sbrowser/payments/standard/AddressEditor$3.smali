.class Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$3;
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

.field final synthetic val$callback:Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;

.field final synthetic val$toEdit:Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$3;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$3;->val$callback:Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$3;->val$toEdit:Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "205"

    const-string v1, "2351"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "201"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$3;->val$callback:Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$3;->val$toEdit:Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method
