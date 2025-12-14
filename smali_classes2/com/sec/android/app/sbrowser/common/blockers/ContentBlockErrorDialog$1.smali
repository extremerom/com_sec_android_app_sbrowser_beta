.class Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialog;

.field final synthetic val$isMultipleType:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialog;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialog$1;->this$0:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialog;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialog$1;->val$isMultipleType:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialog$1;->val$isMultipleType:Z

    if-eqz p1, :cond_0

    const-string p1, "6139"

    goto :goto_0

    :cond_0
    const-string p1, "6130"

    :goto_0
    const-string v0, "609"

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialog$1;->this$0:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
