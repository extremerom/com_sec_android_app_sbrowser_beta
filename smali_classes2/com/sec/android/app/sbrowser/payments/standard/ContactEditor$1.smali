.class Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor$1;
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

.field final synthetic val$toEdit:Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor$1;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor$1;->val$callback:Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor$1;->val$toEdit:Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "206"

    const-string v1, "2353"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "201"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor$1;->val$callback:Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor$1;->val$toEdit:Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method
